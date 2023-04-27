from Classes.Database.DatabaseHandler import get_database, DatabaseHandler
from Classes.Utils.Utils import get_key_from_dictionary

database: DatabaseHandler = get_database()


def calculate_morale_essence_value(essence_tier=3):
    vitality_essence_value = database.get_essences(essence_tier)['Vitality']
    VITALITY_STAT_ID = 4

    for class_name, class_id in DatabaseHandler.mappings.get("CLASSES").items():
        raw_stat_query = "SELECT raw_stat_id, amount FROM Main_Stats_To_Raw_Stats WHERE class_id = %s AND main_stat_id = %s"

        main_stat_to_raw_stats = database.execute_select(raw_stat_query, class_id, VITALITY_STAT_ID)
        for values in main_stat_to_raw_stats:
            stat_id = values[0]
            stat_amount_per_point = values[1]

            stat_name = get_key_from_dictionary(DatabaseHandler.mappings.get('RAW_STATS'), stat_id)

            essence_slice_value = (vitality_essence_value * stat_amount_per_point) / database.get_essences(essence_tier)[stat_name]
            print(essence_slice_value, database.get_essences(essence_tier)[stat_name])
            
            
