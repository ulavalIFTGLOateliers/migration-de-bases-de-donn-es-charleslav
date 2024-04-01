CREATE TABLE `atelier_bd`.`band` (
  `bandName` VARCHAR(50) NOT NULL,
  `creation` YEAR NULL,
  `genre` VARCHAR(50) NULL,
  PRIMARY KEY (`bandName`));

INSERT INTO band (bandName, creation, genre) VALUES ("Crazy Duo", 2015, "rock");
INSERT INTO band (bandName, creation, genre) VALUES ("Luna", 2009, "classical");
INSERT INTO band (bandName, creation, genre) VALUES ("Mysterio", 2019, "pop");


ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE `atelier_bd`.`musician`
ADD COLUMN `role` VARCHAR(50) NULL AFTER `age`;
ALTER TABLE `atelier_bd`.`musician`
ADD COLUMN `bandName` VARCHAR(50) NULL AFTER `role`;

UPDATE musician SET role = "vocals", bandName="Crazy Duo" WHERE musicianName="Alina";
UPDATE musician SET role = "guitar", bandName="Mysterio" WHERE musicianName="Mysterio";
UPDATE musician SET role = "percussion", bandName= "Crazy Duo" WHERE musicianName="Rainbow";
UPDATE musician SET role = "piano", bandName="Luna" WHERE musicianName="Luna";

