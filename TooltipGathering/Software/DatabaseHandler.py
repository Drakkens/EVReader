import psycopg2


def create_insert_query(table_name, table_fields, insertion_values):
    return f'INSERT INTO {table_name} ({", ".join(table_fields)}) VALUES ({", ".join(str(value) for value in insertion_values)}) ON CONFLICT DO NOTHING'


class DatabaseHandler:
    connection = None

    def __init__(self):
        self.connection = self.get_database_connection()

    def execute_select(self, query: str):
        cursor = self.connection.cursor()
        result = None

        try:
            cursor.execute(query)
            result = cursor.fetchall()
            print(f"Successfully Fetched!")

        except Exception:
            print("Error On Select!")

        finally:
            cursor.close()

        return result

    def execute_insert(self, query: str, values=None):
        cursor = self.connection.cursor()
        inserted_rows = 0

        try:
            cursor.execute(query, values)
            self.connection.commit()
            inserted_rows = cursor.rowcount
            print(f"Successfully Inserted {inserted_rows} Rows")

        except Exception:
            print("Error On Insertion!")

        finally:
            cursor.close()

        return inserted_rows > 0

    def get_database_connection(self):
        database_connection = self.connection

        if database_connection is None:
            database_connection = self.__establish_connection()

        return database_connection

    def __establish_connection(self):
        database_connection = psycopg2.connect(database="Test", user='Test', password='Test', host='127.0.0.1',
                                               port='5432')

        return database_connection

    def get_id_mappings(self):

        mappings = {}

        queries = {'CLASSES_QUERY': "SELECT class_name, id FROM Classes",
                   'MAIN_STATS_QUERY': "SELECT stat_name, id FROM Main_Stats",
                   'RAW_STATS_QUERY': "SELECT stat_name, id FROM Raw_Stats",
                   }

        for key, query in queries.items():
            ids = self.execute_select(query)
            new_dict = {}

            for id in ids:
                new_dict[id[0]] = id[1]
            mappings[key.replace('_QUERY', '')] = new_dict

        return mappings
