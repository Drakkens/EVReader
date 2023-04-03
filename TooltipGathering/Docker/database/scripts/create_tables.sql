CREATE TABLE Armour_Types(
    ID serial PRIMARY KEY,
    armour_type VARCHAR(15)
);

INSERT INTO Armour_Types(armour_type) VALUES('Light');
INSERT INTO Armour_Types(armour_type) VALUES('Medium');
INSERT INTO Armour_Types(armour_type) VALUES('Heavy');

CREATE TABLE Classes(
    ID serial PRIMARY KEY,
    class_name VARCHAR(15),
    armour_type smallint REFERENCES armour_types(id)
);

INSERT INTO Classes(class_name, armour_type) VALUES('Beorning', 3);
INSERT INTO Classes(class_name, armour_type) VALUES('Burglar', 2);
INSERT INTO Classes(class_name, armour_type) VALUES('Brawler', 3);
INSERT INTO Classes(class_name, armour_type) VALUES('Captain', 3);
INSERT INTO Classes(class_name, armour_type) VALUES('Champion', 3);
INSERT INTO Classes(class_name, armour_type) VALUES('Guardian', 3);
INSERT INTO Classes(class_name, armour_type) VALUES('Hunter', 2);
INSERT INTO Classes(class_name, armour_type) VALUES('Lore-Master', 1);
INSERT INTO Classes(class_name, armour_type) VALUES('Minstrel', 1);
INSERT INTO Classes(class_name, armour_type) VALUES('Rune-Keeper', 1);
INSERT INTO Classes(class_name, armour_type) VALUES('Warden', 2);


CREATE TABLE IF NOT EXISTS Main_Stats(
    ID serial PRIMARY KEY,
    stat_name VARCHAR(15)
);


INSERT INTO Main_Stats(stat_name) VALUES('Armour');
INSERT INTO Main_Stats(stat_name) VALUES('Might');
INSERT INTO Main_Stats(stat_name) VALUES('Agility');
INSERT INTO Main_Stats(stat_name) VALUES('Vitality');
INSERT INTO Main_Stats(stat_name) VALUES('Will');
INSERT INTO Main_Stats(stat_name) VALUES('Fate');

CREATE TABLE IF NOT EXISTS Raw_Stats(
    ID serial PRIMARY KEY,
    stat_name VARCHAR(30)
);

INSERT INTO Raw_Stats(stat_name) VALUES('Critical Rating');
INSERT INTO Raw_Stats(stat_name) VALUES('Finesse Rating');
INSERT INTO Raw_Stats(stat_name) VALUES('Physical Mastery Rating');
INSERT INTO Raw_Stats(stat_name) VALUES('Tactical Mastery Rating');
INSERT INTO Raw_Stats(stat_name) VALUES('Physical Mitigation');
INSERT INTO Raw_Stats(stat_name) VALUES('Tactical Mitigation');
INSERT INTO Raw_Stats(stat_name) VALUES('Critical Defence');
INSERT INTO Raw_Stats(stat_name) VALUES('Block Rating');
INSERT INTO Raw_Stats(stat_name) VALUES('Parry Rating');
INSERT INTO Raw_Stats(stat_name) VALUES('Evade Rating');
INSERT INTO Raw_Stats(stat_name) VALUES('Outgoing Healing Rating');
INSERT INTO Raw_Stats(stat_name) VALUES('Incoming Healing Rating');
INSERT INTO Raw_Stats(stat_name) VALUES('Resistance Rating');


CREATE TABLE Stat_Types(
    ID serial PRIMARY KEY,
    stat_type VARCHAR(20)
);

CREATE TABLE Essence_Tiers(
    id serial PRIMARY KEY,
    essence_level smallint,
    tier_name VARCHAR(30),
    tier_number smallint
);

INSERT INTO Essence_Tiers(essence_level, tier_name, tier_number) VALUES(140, 'Humble Delver''s', 1);
INSERT INTO Essence_Tiers(essence_level, tier_name, tier_number) VALUES(140, 'Flickering Delver''s', 2);
INSERT INTO Essence_Tiers(essence_level, tier_name, tier_number) VALUES(140, 'Lively Delver''s', 3);

CREATE TABLE Essences(
    id serial PRIMARY KEY,
    tier_id smallint,
    stat_amount real,
    stat_id smallint, -- References either Main_Stats or Main_Stats
    stat_type_id smallint REFERENCES Stat_Types(id)
);

CREATE TABLE Main_Stats_to_Raw_Stats(
    main_stat_id smallint REFERENCES Main_Stats(id),
    raw_stat_id smallint REFERENCES Raw_Stats(id),
    class_id smallint REFERENCES Classes(id),
    amount real,
    PRIMARY KEY (main_stat_id, raw_stat_id, class_id)

);

INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 5, 1, 1);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 5, 2, 1);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 5, 3, 1);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 5, 4, 1);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 5, 5, 1);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 5, 6, 1);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 5, 7, 1);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 5, 8, 1);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 5, 9, 1);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 5, 10, 1);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 5, 11, 1);

INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 6, 1, 0.2);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 6, 2, 0.2);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 6, 3, 0.2);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 6, 4, 0.2);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 6, 5, 0.2);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 6, 6, 0.2);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 6, 7, 0.2);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 6, 8, 0.2);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 6, 9, 0.2);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 6, 10, 0.2);
INSERT INTO Main_Stats_to_Raw_Stats(main_stat_id, raw_stat_id, class_id, amount) VALUES(1, 6, 11, 0.2);
CREATE TABLE Items(
    ID serial PRIMARY KEY,
    item_name VARCHAR(60),
    essence_value real
);

INSERT INTO Stat_Types(stat_type) VALUES('Raw');
INSERT INTO Stat_Types(stat_type) VALUES('Main');

CREATE TABLE Item_Stats(
    item_id integer REFERENCES Items(ID),
    stat_id smallint, -- References either Main_Stats or Main_Stats
    stat_type smallint REFERENCES Stat_Types(ID),
    PRIMARY KEY (item_id, stat_id, stat_type)
);

CREATE INDEX Item_By_ItemID ON Item_Stats(item_id);