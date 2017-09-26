CREATE DATABASE IF NOT EXISTS pets;
USE pets;
CREATE TABLE IF NOT EXISTS petOwner(id int NOT NULL AUTO_INCREMENT, name varchar(20) NOT NULL, PRIMARY KEY(id));
CREATE TABLE IF NOT EXISTS species(id int NOT NULL AUTO_INCREMENT, speciesName varchar(20) NOT NULL, PRIMARY KEY(id));
CREATE TABLE IF NOT EXISTS pet(id int NOT NULL AUTO_INCREMENT, petName varchar(20) NOT NULL, ownerId int NOT NULL, ownerName varchar(20) NOT NULL, speciesId int NOT NULL, sex char(1), birthDate DATE NOT NULL, deathDate DATE, PRIMARY KEY(id), FOREIGN KEY (ownerId) REFERENCES petOwner(id), FOREIGN KEY (speciesId) REFERENCES species(id));

