DROP TABLE band;
ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer RENAME COLUMN musicianName TO singerName;
ALTER TABLE `atelier_bd`.`singer`
DROP COLUMN `role`;
ALTER TABLE `atelier_bd`.`singer`
DROP COLUMN `bandName`;