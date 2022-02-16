/* Database schema to keep the structure of entire database. */
CREATE TABLE animals(
   animals_id integer,
   name varchar(30),
   date_of_birth date,
   escape_attempts integer,
   neutered boolean,
   weight_kg decimal,
   species varchar(50),
   PRIMARY KEY( animals_id )
);