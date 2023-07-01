from Classes.Database.DatabaseHandler import get_database, DatabaseHandler
from Classes.Utils.Utils import get_key_from_dictionary

database: DatabaseHandler = get_database()


def calculate_morale_essence_value(essence_tier=3):
    essence_values_per_class = {}

    vitality_essence_value = database.get_essences(essence_tier)['Vitality']
    VITALITY_STAT_ID = 4

    for class_name, class_id in DatabaseHandler.mappings.get("CLASSES").items():
        raw_stat_query = "SELECT raw_stat_id, amount FROM Main_Stats_To_Raw_Stats WHERE class_id = %s AND main_stat_id = %s"

        vitality_raw_stats = database.execute_select(raw_stat_query, class_id, VITALITY_STAT_ID)

        # Initial Value - To be modified depending on other Raw Stats.
        vitality_morale_contribution = 1
        for values in vitality_raw_stats:
            stat_id = values[0]
            stat_amount_per_point = values[1]
            if stat_id == 14:  # Skip Morale Stat.
                continue

            stat_name = get_key_from_dictionary(DatabaseHandler.mappings.get('RAW_STATS'), stat_id)

            essence_slice_value = (vitality_essence_value * stat_amount_per_point) / \
                                  database.get_essences(essence_tier)[stat_name]

            vitality_morale_contribution -= essence_slice_value

        morale_per_vitality_point_query = f"SELECT cs.amount FROM main_stats_to_raw_stats cs WHERE class_id = {class_id} AND raw_stat_id = 14"
        morale_per_vitality_point = database.execute_select(morale_per_vitality_point_query)[0][0]

        essence_per_morale_point = vitality_morale_contribution / (DatabaseHandler.essence_values.get('Vitality') * morale_per_vitality_point)
        morale_per_one_essence = 1 / essence_per_morale_point

        essence_values_per_class[class_name] = round(morale_per_one_essence)

    return essence_values_per_class
