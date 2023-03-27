CREATE TABLE IF NOT EXISTS Classes(
    ID serial PRIMARY KEY,
    class_name VARCHAR(15)
);

INSERT INTO Classes(class_name) VALUES('Beorning');
INSERT INTO Classes(class_name) VALUES('Burglar');
INSERT INTO Classes(class_name) VALUES('Brawler');
INSERT INTO Classes(class_name) VALUES('Captain');
INSERT INTO Classes(class_name) VALUES('Champion');
INSERT INTO Classes(class_name) VALUES('Guardian');
INSERT INTO Classes(class_name) VALUES('Hunter');
INSERT INTO Classes(class_name) VALUES('Lore-Master');
INSERT INTO Classes(class_name) VALUES('Minstrel');
INSERT INTO Classes(class_name) VALUES('Rune-Keeper');
INSERT INTO Classes(class_name) VALUES('Warden');


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
    stat_name VARCHAR(20)
);

INSERT INTO Raw_Stats(stat_name) VALUES('Critical Rating');
INSERT INTO Raw_Stats(stat_name) VALUES('Finesse');
INSERT INTO Raw_Stats(stat_name) VALUES('Physical Mastery');
INSERT INTO Raw_Stats(stat_name) VALUES('Tactical Mastery');
INSERT INTO Raw_Stats(stat_name) VALUES('Physical Mitigation');
INSERT INTO Raw_Stats(stat_name) VALUES('Tactical Mitigaton');
INSERT INTO Raw_Stats(stat_name) VALUES('Critical Defence');
INSERT INTO Raw_Stats(stat_name) VALUES('Block');
INSERT INTO Raw_Stats(stat_name) VALUES('Parry');
INSERT INTO Raw_Stats(stat_name) VALUES('Evade');
INSERT INTO Raw_Stats(stat_name) VALUES('Outgoing Healing');
INSERT INTO Raw_Stats(stat_name) VALUES('Incoming Healing');
INSERT INTO Raw_Stats(stat_name) VALUES('Resistance');


CREATE TABLE Main_Stats_to_Raw_Stats(
    main_stat_id smallint REFERENCES Main_Stats(id),
    raw_stat_id smallint REFERENCES Raw_Stats(id),
    class_id smallint REFERENCES Classes(id),
    amount real

);

