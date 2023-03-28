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


CREATE TABLE Main_Stats_to_Raw_Stats(
    main_stat_id smallint REFERENCES Main_Stats(id),
    raw_stat_id smallint REFERENCES Raw_Stats(id),
    class_id smallint REFERENCES Classes(id),
    amount real,
    PRIMARY KEY (main_stat_id, raw_stat_id, class_id)

);

