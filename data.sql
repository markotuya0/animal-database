/* Populate database with sample data. */

INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES (1,'Agumon','2020-02-03',0,TRUE,10.23);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES (2,'Gabumon','2018-11-15',2,TRUE,8);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES (3,'Pikachu','2021-01-07',1,FALSE,15.04);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES (4,'Devimon','2017-05-12',5,FALSE,11);
-- TASK 2
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES (5,'Charmander','Feb 8,2020', 0,false,'11');
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (6,'Plantmon', 'November 15, 2021', 2, true, '-5.7');
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (7,'Squirtle', 'April 2, 1993', 3, false, '-12.13');
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (8,'Angemon', 'June 12, 2005', 1, true, '-45');
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (9,'Boarmon', 'June 7, 2005', 7, true, '20.4');
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (10,'Blossom', 'October 13, 1998', 3, true, '17');
INSERT INTO animals (id,name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (11,'Ditto', 'May 14, 2022', 4, true, '22');

-- 3rd task
INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age)
VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age)
VALUES ('Bob', 45);
INSERT INTO owners (full_name, age)
VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age)
VALUES ('Dean Winchester', 14);
INSERT INTO owners (full_name, age)
VALUES ('Jodie Whittaker', 34);

INSERT INTO species (name)
VALUES ('Pokemon');
INSERT INTO species (name)
VALUES ('Digimon');


-- Update species column to digimon for all animals that name ends in "mon".
UPDATE animals
SET species_id = 1
WHERE name LIKE '%mon';
-- Update species column to pokemon for all animals without species.
UPDATE animals
SET species_id = 2
WHERE name NOT LIKE '%mon';


-- Update owners column with given values.
-- Sam Smith owns Agumon.
UPDATE animals
SET owner_id = 1
WHERE name = 'Agumon';
-- Jennifer Orwell owns Gabumon and Pikachu.
UPDATE animals
SET owner_id = 2
WHERE name = 'Gabumon';
UPDATE animals
SET owner_id = 2
WHERE name = 'Pikachu';
-- Bob owns Devimon and Plantmon.
UPDATE animals
SET owner_id = 3
WHERE name = 'Devimon';
UPDATE animals
SET owner_id = 3
WHERE name = 'Plantmon';
-- Melody Pond owns Charmander, Squirtle, and Blossom.
UPDATE animals
SET owner_id = 4
WHERE name = 'Charmander';
UPDATE animals
SET owner_id = 4
WHERE name = 'Squirtle';
UPDATE animals
SET owner_id = 4
WHERE name = 'Blossom';
-- Dean Winchester owns Angemon and Boarmon.
UPDATE animals
SET owner_id = 5
WHERE name = 'Angemon';
UPDATE animals
SET owner_id = 5
WHERE name = 'Boarmon';