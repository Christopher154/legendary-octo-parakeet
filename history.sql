CREATE DATABASE IF NOT EXISTS pets2;
USE pets2;
CREATE TABLE IF NOT EXISTS petOwner(id int NOT NULL AUTO_INCREMENT, name varchar(20) NOT NULL, PRIMARY KEY(id));
CREATE TABLE IF NOT EXISTS species(id int NOT NULL AUTO_INCREMENT, speciesName varchar(20) NOT NULL, PRIMARY KEY(id));
CREATE TABLE IF NOT EXISTS pet(id int NOT NULL AUTO_INCREMENT, petName varchar(20) NOT NULL, speciesId int NOT NULL, sex char(1), birthDate DATE NOT NULL, deathDate DATE, PRIMARY KEY(id), FOREIGN KEY (speciesId) REFERENCES species(id));

INSERT INTO petOwner values (null, 'Harold');
INSERT INTO petOwner values (null, 'Gwen');
INSERT INTO petOwner values (null, 'Benny');
INSERT INTO petOwner values (null, 'Diane');

INSERT INTO species values (null, 'cat');
INSERT INTO species values (null, 'dog');
INSERT INTO species values (null, 'bird');
INSERT INTO species values (null, 'snake');
INSERT INTO species values (null, 'hamster');

INSERT INTO pet VALUES (null, 'Fluffy', 1, 'f', '1994-02-04', NULL);
INSERT INTO pet VALUES (null, 'Claws', 1, 'm', '1995-02-04', NULL);
INSERT INTO pet VALUES (null, 'Buffy', 2, 'f', '1996-02-04', NULL);
INSERT INTO pet VALUES (null, 'Fang', 2, 'm', '1997-02-04', NULL);
INSERT INTO pet VALUES (null, 'Bowser', 2, 'm', '1998-02-04', NULL);
INSERT INTO pet VALUES (null, 'Chirpy', 3, null, '1999-02-04', NULL);
INSERT INTO pet VALUES (null, 'Whistler', 3, null, '2000-02-04', NULL);
INSERT INTO pet VALUES (null, 'Slim', 4, 'm', '2001-02-04', NULL);
INSERT INTO pet VALUES (null, 'Puffball', 4, 'f', '2002-02-04', NULL);

CREATE TABLE IF NOT EXISTS Pet_Owner(OwnerId int NOT NULL, PetId int NOT NULL, PRIMARY KEY (OwnerId, PetId));
CREATE TABLE IF NOT EXISTS temp(id int NOT NULL, petname varchar(20) NOT NULL, speciesId int NOT NULL, sex char(1), birthDate Date NOT NULL, deathDate Date, neutered char(1) NOT NULL DEFAULT '0', price float );
INSERT INTO temp(id, petname, speciesId, sex, birthDate, deathDate) SELECT id, petname, speciesId, sex, birthDate, deathDate FROM pet;
UPDATE temp SET neutered = '1' where sex = 'm';
UPDATE temp SET price = 10 where id = 1;
UPDATE temp SET price = 20 where id = 2;
UPDATE temp SET price = 30 where id = 3;
UPDATE temp SET price = 40 where id = 4;
UPDATE temp SET price = 50 where id = 5;
DROP TABLE pet;

