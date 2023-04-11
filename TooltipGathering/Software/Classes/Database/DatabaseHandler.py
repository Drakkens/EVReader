import psycopg2
from Classes.Utils.Utils import StatType


# ToDo: Clean this mess up. Probably want to get rid of '*' usage
def create_insert_query(table_name, table_fields, insertion_values, return_id=False):
    query = f'INSERT INTO {table_name} ({", ".join(table_fields)}) VALUES({", ".join("%s" for _ in insertion_values)}) ON CONFLICT DO NOTHING'

    if return_id:
        query += ' RETURNING id'

    return query, insertion_values


def get_database():
    if DatabaseHandler.instance is None:
        DatabaseHandler()
    return DatabaseHandler.instance


class DatabaseHandler:
    instance = None
    connection = None
    mappings = None
    essence_values = None

    def __init__(self):

        DatabaseHandler.instance = self
        self.connection = self.get_database_connection()
        DatabaseHandler.mappings = self.get_id_mappings()

        # ToDo: Hardcoded Essence Tier
        DatabaseHandler.essence_values = self.get_essences(3)

    def execute_select(self, query: str, *params):
        cursor = self.connection.cursor()
        result = None

        try:
            self.connection.rollback()
            cursor.execute(query, params)
            result = cursor.fetchall()
            # print(f"Successfully Fetched!")

        except Exception as e:
            print(f"Error On Select!: {str(e)}")

        finally:
            cursor.close()

        return result

    def execute_insert(self, query: str, *values):
        cursor = self.connection.cursor()
        returned_value = None

        try:
            self.connection.rollback()
            cursor.execute(query, *values)
            inserted_rows = cursor.rowcount
            self.connection.commit()

            print(f"Successfully Inserted {inserted_rows} Rows")
            if inserted_rows > 0 and cursor.description:
                returned_value = cursor.fetchone()[0]

        except Exception as e:
            print(f"Error On Insertion!: {str(e)}")

        finally:
            cursor.close()

        return returned_value

    def get_database_connection(self):
        database_connection = self.connection

        if database_connection is None:
            database_connection = psycopg2.connect(database="Test", user='Test', password='Test', host='127.0.0.1',
                                                   port='5432')

        return database_connection

    def get_essences(self, essence_tier):
        essence_values = {}

        essences_query = f"""SELECT stat_amount, stat_id, stat_type_id FROM Essences WHERE tier_id = {essence_tier}"""

        result = self.execute_select(essences_query)
        for essence in result:
            stat_type = StatType(essence[2])
            # Gets Dict Key From Value
            essence_stat = list(self.mappings.get(f'{stat_type.name}_STATS').keys())[
                list(self.mappings.get(f'{stat_type.name}_STATS').values()).index(essence[1])]

            essence_values[essence_stat] = essence[0]

        return essence_values

    def get_id_mappings(self):

        mappings = {}

        queries = {'CLASSES_QUERY': "SELECT class_name, id FROM Classes",
                   'MAIN_STATS_QUERY': "SELECT stat_name, id FROM Main_Stats",
                   'RAW_STATS_QUERY': "SELECT stat_name, id FROM Raw_Stats",
                   'ARMOUR_TYPES_QUERY': "SELECT armour_type, id FROM Armour_Types",
                   'STAT_TYPES_QUERY': "SELECT stat_type, id FROM Stat_Types",
                   }

        for key, query in queries.items():
            ids = self.execute_select(query)
            new_dict = {}

            for id in ids:
                new_dict[id[0]] = id[1]
            mappings[key.replace('_QUERY', '')] = new_dict

        return mappings
