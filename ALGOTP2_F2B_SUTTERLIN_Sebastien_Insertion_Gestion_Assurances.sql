INSERT INTO CLIENT (NUMCLIENT, NOM, ADRESSE)
 VALUES
 ((SELECT COUNT(NUMCLIENT)+1 from CLIENT), 'Jamy', 'Saint-Didier-des-Bois'),
 ((SELECT COUNT(NUMCLIENT)+1 from CLIENT), 'Spart', 'Strasbourg');

 INSERT INTO CONTRAT(SIGNATAIRE,NUMCTR,TYPES,DATESIGN,NUMCLI)
  VALUES 
  ((SELECT NOM FROM CLIENT,CONTRAT WHERE CLIENT.NUMCLI=CONTRAT.NUMCLI ),'1250','250','27-09-1995','270'),
  ( 'Jean', '1200','210','12-10-2000',' '),  /*pas de numclient car un contrat peut ne pas avoir de client */
  ('Claude','1202','215','12-10-2005','27'),  /*un client peut avoir signé plusieurs contrat plusieurs contrats */
  ('Claude','1203','215','12-10-2005','27')  
  