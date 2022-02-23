/* Database schema to keep the structure of entire database. */
CREATE TABLE animals(
   animals_id integer,
   name varchar(30),
   date_of_birth date,
   escape_attempts integer,
   neutered boolean,
   weight_kg decimal,
   PRIMARY KEY( animals_id )
);

ALTER TABLE animals ADD species;

CREATE TABLE owners(
   owners_id SERIAL,
   full_name VARCHAR(30),
   age integer,
   PRIMARY KEY(owners_id)
);

CREATE TABLE species(
   species_id SERIAL,
   name VARCHAR(30),
   PRIMARY KEY(species_id)
);

ALTER TABLE animals DROP COLUMN animals_id;
ALTER TABLE animals ADD COLUMN animals_id SERIAL PRIMARY KEY;
ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species_id int REFERENCES species(species_id);
ALTER TABLE animals ADD owners_id int REFERENCES owners(owners_id);

CREATE TABLE vets(
   vets_id SERIAL,
   name VARCHAR(30),
   age int,
   date_of_graduation date,
   PRIMARY KEY(vets_id)
);

CREATE TABLE specializations(
   species_id int,
   vets_id int
);

CREATE TABLE visits(
   animal_id int,
   vets_id int,
   visit_date date
);


