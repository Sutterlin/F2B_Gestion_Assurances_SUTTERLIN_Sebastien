DELETE FROM  CLIENT;
DELETE FROM  CONTRAT;
DELETE FROM  ACCIDENT;
DELETE FROM  VEHICULE;
DELETE FROM  IMPLICATION;


ALTER TABLE CLIENT
DROP INDEX I_CLIENT;

ALTER TABLE CONTRAT
DROP INDEX I_CONTRAT;

ALTER TABLE ACCIDENT
DROP INDEX I_ACCIDENT;

ALTER TABLE VEHICULE
DROP INDEX I_VEHICULE;

ALTER TABLE IMPLICATION
DROP INDEX I_IMPLICATION;















ALTER TABLE CLIENT
DROP PRIMARY KEY;

ALTER TABLE CONTRAT
DROP PRIMARY KEY;

ALTER TABLE ACCIDENT
DROP PRIMARY KEY;

ALTER TABLE VEHICULE
DROP PRIMARY KEY;

ALTER TABLE IMPLICATION
DROP PRIMARY KEY;

ALTER TABLE CONTRAT                             /*On supprime la contrainte de la foreign key dans contrat. Je n'en ai pas fait d'autre par manque de temps*/
DROP FOREIGN KEY FK_NUMCLIENT;

DROP TABLE CLIENT;
DROP TABLE CONTRAT;
DROP TABLE ACCIDENT;
DROP TABLE VEHICULE;
DROP TABLE IMPLICATION;