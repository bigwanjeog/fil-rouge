--------------------------------------------------------
--  Fichier créé - vendredi-juillet-29-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACTIVITE
--------------------------------------------------------

  CREATE TABLE "RENAUD"."ACTIVITE" 
   (	"ACTIVITE_ID" NUMBER, 
	"ACTIVITE_LIBELLE" CHAR(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

  CREATE TABLE "RENAUD"."CLIENT" 
   (	"CLIENT_ID" NUMBER(4,0), 
	"NATURE_ID" NUMBER, 
	"ACTIVITE_ID" NUMBER, 
	"CLIENT_ADRESSE" CHAR(100 BYTE), 
	"CLIENT_CA" NUMBER, 
	"CLIENT_COMMGENERAUX" CHAR(100 BYTE), 
	"CLIENT_EFFECTIF" NUMBER, 
	"CLIENT_MAIL" CHAR(50 BYTE), 
	"CLIENT_RAISON_SOCIALE" CHAR(100 BYTE), 
	"CLIENT_TEL" CHAR(10 BYTE), 
	"CLIENT_TYPE" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table COLLABORATEUR
--------------------------------------------------------

  CREATE TABLE "RENAUD"."COLLABORATEUR" 
   (	"COLLA_ID" NUMBER(4,0), 
	"COL_COLLA_ID" NUMBER(4,0), 
	"FONCTION_ID" NUMBER, 
	"COLLA_ADRESSE1" CHAR(100 BYTE), 
	"COLLA_ADRESSE2" CHAR(100 BYTE), 
	"COLLA_CP" CHAR(5 BYTE), 
	"COLLA_DATE_EMBAUCHE" DATE, 
	"COLLA_DATE_FIN_CONTRAT" DATE, 
	"COLLA_MAIL" CHAR(50 BYTE), 
	"COLLA_MOBILE" CHAR(10 BYTE), 
	"COLLA_NOM" CHAR(20 BYTE), 
	"COLLA_PRENOM" CHAR(20 BYTE), 
	"COLLA_SEXE" CHAR(1 BYTE), 
	"COLLA_STATUT" CHAR(3 BYTE), 
	"COLLA_TEL" CHAR(10 BYTE), 
	"COLLA_TITRE" CHAR(3 BYTE), 
	"COLLA_VILLE" CHAR(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table CONTACT
--------------------------------------------------------

  CREATE TABLE "RENAUD"."CONTACT" 
   (	"CONTACT_ID" NUMBER, 
	"CONTACT_EMAIL" CHAR(50 BYTE), 
	"CONTACT_FONCTION" CHAR(50 BYTE), 
	"CONTACT_MOBILE" CHAR(10 BYTE), 
	"CONTACT_NOM" CHAR(25 BYTE), 
	"CONTACT_PRENOM" CHAR(25 BYTE), 
	"CONTACT_TEL" CHAR(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table DOCUMENT
--------------------------------------------------------

  CREATE TABLE "RENAUD"."DOCUMENT" 
   (	"DOCUMENT_ID" NUMBER, 
	"COLLA_ID" NUMBER(4,0), 
	"DOCUMENT_DATE_DIFFUSION" DATE, 
	"DOCUMENT_RESUME" CHAR(100 BYTE), 
	"DOCUMENT_TITRE" CHAR(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table ETAPE
--------------------------------------------------------

  CREATE TABLE "RENAUD"."ETAPE" 
   (	"ETAPE_ID" NUMBER(6,0), 
	"ETAPEPROJ_ID" NUMBER, 
	"PROJET_ID" NUMBER(4,0), 
	"ETAPE_CHARGE_ESTIMEE" NUMBER(*,0), 
	"ETAPE_CHARGE_PROD" NUMBER(*,0), 
	"ETAPE_CHARGEVALID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table ETAPE_PROJET
--------------------------------------------------------

  CREATE TABLE "RENAUD"."ETAPE_PROJET" 
   (	"ETAPEPROJ_ID" NUMBER, 
	"ETAPEPROJ_LIBELLE" CHAR(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table FONCTION
--------------------------------------------------------

  CREATE TABLE "RENAUD"."FONCTION" 
   (	"FONCTION_ID" NUMBER, 
	"FONCTION_LIBELLE" CHAR(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table GERE
--------------------------------------------------------

  CREATE TABLE "RENAUD"."GERE" 
   (	"CONTACT_ID" NUMBER, 
	"CLIENT_ID" NUMBER(4,0), 
	"PROJET_ID" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table INCLUT
--------------------------------------------------------

  CREATE TABLE "RENAUD"."INCLUT" 
   (	"PROJET_ID" NUMBER(4,0), 
	"DOCUMENT_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table INTERVENTION
--------------------------------------------------------

  CREATE TABLE "RENAUD"."INTERVENTION" 
   (	"INTERVENTION_ID" NUMBER, 
	"COLLA_ID" NUMBER(4,0), 
	"FONCTION_ID" NUMBER, 
	"ETAPE_ID" NUMBER(6,0), 
	"INTERVENTION_DATE_DEBUT" DATE, 
	"INTERVENTION_DATE_FIN" DATE, 
	"INTERVENTION_DUREE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table NATURE_CLIENT
--------------------------------------------------------

  CREATE TABLE "RENAUD"."NATURE_CLIENT" 
   (	"NATURE_ID" NUMBER, 
	"NATURE_LIBELLE" CHAR(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table PROJET
--------------------------------------------------------

  CREATE TABLE "RENAUD"."PROJET" 
   (	"PROJET_ID" NUMBER(4,0), 
	"TYPEPROJ_ID" NUMBER(*,0), 
	"COLLA_ID" NUMBER(4,0), 
	"ACTIVITE_ID" NUMBER, 
	"PROJET_CHARGE_GLOBALE_ESTIMEE" NUMBER, 
	"PROJET_CHARGE_REELE" NUMBER, 
	"PROJET_COLLA_MAX" NUMBER, 
	"PROJET_COMMSPECIFIQUE" CHAR(100 BYTE), 
	"PROJET_CYCLE_VIE" CHAR(10 BYTE), 
	"PROJET_DATE_PREVUE_DEBUT" DATE, 
	"PROJET_DATE_PREVUE_FIN" DATE, 
	"PROJET_DATE_REELLE_DEBUT" DATE, 
	"PROJET_DATE_REELLE_FIN" DATE, 
	"PROJET_ESTIMATION" CHAR(100 BYTE), 
	"PROJET_INFOS_TECH" CHAR(100 BYTE), 
	"PROJET_LIBELLE_COURT" CHAR(10 BYTE), 
	"PROJET_LIBELLE_LONG" CHAR(50 BYTE), 
	"PROJET_TAILLE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table SALAIRE
--------------------------------------------------------

  CREATE TABLE "RENAUD"."SALAIRE" 
   (	"SALAIRE_ID" NUMBER, 
	"COLLA_ID" NUMBER(4,0), 
	"SALAIRE_MONTANT" NUMBER, 
	"SALAIRE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table TECHNOLOGIE
--------------------------------------------------------

  CREATE TABLE "RENAUD"."TECHNOLOGIE" 
   (	"TECHNOLOGIE_ID" NUMBER, 
	"TYPETECHNO_ID" NUMBER, 
	"TECHNOLOGIE_LIBELLE" CHAR(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table TYPE_PROJET
--------------------------------------------------------

  CREATE TABLE "RENAUD"."TYPE_PROJET" 
   (	"TYPEPROJ_ID" NUMBER(*,0), 
	"TYPEPROJ_LIBELLE" CHAR(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table TYPE_TECHNO
--------------------------------------------------------

  CREATE TABLE "RENAUD"."TYPE_TECHNO" 
   (	"TYPETECHNO_ID" NUMBER, 
	"TYPETECHNO_LIBELLE" CHAR(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Table UTILISE
--------------------------------------------------------

  CREATE TABLE "RENAUD"."UTILISE" 
   (	"TECHNOLOGIE_ID" NUMBER, 
	"PROJET_ID" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
REM INSERTING into RENAUD.ACTIVITE
SET DEFINE OFF;
Insert into RENAUD.ACTIVITE (ACTIVITE_ID,ACTIVITE_LIBELLE) values ('1','Secteur financier et juridique                    ');
Insert into RENAUD.ACTIVITE (ACTIVITE_ID,ACTIVITE_LIBELLE) values ('2','Négoce et commerce de biens                      ');
Insert into RENAUD.ACTIVITE (ACTIVITE_ID,ACTIVITE_LIBELLE) values ('3','Alimentation                                      ');
Insert into RENAUD.ACTIVITE (ACTIVITE_ID,ACTIVITE_LIBELLE) values ('4','Bâtiment, Immobilier                             ');
Insert into RENAUD.ACTIVITE (ACTIVITE_ID,ACTIVITE_LIBELLE) values ('5','Expertise                                         ');
Insert into RENAUD.ACTIVITE (ACTIVITE_ID,ACTIVITE_LIBELLE) values ('6','Tourisme, loisirs, culture                        ');
Insert into RENAUD.ACTIVITE (ACTIVITE_ID,ACTIVITE_LIBELLE) values ('7','Enseignement                                      ');
Insert into RENAUD.ACTIVITE (ACTIVITE_ID,ACTIVITE_LIBELLE) values ('8','Autres services                                   ');
REM INSERTING into RENAUD.CLIENT
SET DEFINE OFF;
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('1','3','8','120-1049 At Chemin                                                                                  ','58072','nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor                              ','199','a.tortor@molestiein.edu                           ','Tincidunt PC                                                                                        ','0232211054','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('3','2','7','Appartement 630-2902 Lacinia Rd.                                                                    ','516360','tortor, dictum eu, placerat eget,                                                                   ','59','Suspendisse.non.leo@aarcu.net                     ','Eget Ipsum Suspendisse PC                                                                           ','0170225547','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('6','3','1','CP 821, 3198 Penatibus Route                                                                        ','12837','ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices      ','21','ac.mi.eleifend@faucibusutnulla.com                ','Mauris Blandit Mattis PC                                                                            ','0450912639','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('7','1','7','7163 Nunc Rue                                                                                       ','92810','tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non              ','181','sem.semper@parturientmontesnascetur.co.uk         ','Justo Nec Company                                                                                   ','0210913510','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('8','3','7','Appartement 821-579 Et Avenue                                                                       ','549280','elit, a feugiat tellus lorem eu metus. In lorem. Donec                                              ','133','nibh@consectetuer.edu                             ','Mauris Eu Consulting                                                                                ','0243182465','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('9','2','4','7951 Nunc Rd.                                                                                       ','302894','Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc                   ','88','lorem.fringilla@gravidasitamet.ca                 ','Integer In Magna PC                                                                                 ','0576967046','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('11','3','3','Appartement 782-8127 Ante Rd.                                                                       ','103367','bibendum fermentum metus. Aenean sed pede nec                                                       ','191','id@nonummyutmolestie.org                          ','Purus Sapien Gravida Institute                                                                      ','0803640372','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('12','3','6','Appartement 215-2037 Donec Avenue                                                                   ','721584','Cras pellentesque. Sed dictum. Proin                                                                ','47','erat.neque@quis.co.uk                             ','Malesuada Fames Institute                                                                           ','0811255298','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('13','2','7','722-7251 Enim Avenue                                                                                ','410709','amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec  ','26','Phasellus.elit@bibendumullamcorperDuis.ca         ','Gravida Nunc Sed Corporation                                                                        ','0218206398','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('14','2','7','CP 523, 9510 Donec Avenue                                                                           ','146749','mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec                            ','178','accumsan@Curabiturvellectus.net                   ','Est Consulting                                                                                      ','0399398819','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('16','3','2','CP 800, 3604 At Avenue                                                                              ','671895','risus odio, auctor vitae, aliquet nec, imperdiet nec,                                               ','21','diam.lorem@sit.edu                                ','Imperdiet Dictum LLC                                                                                ','0152791344','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('17','3','3','208-5879 Vestibulum Rd.                                                                             ','399953','a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi                        ','75','a@ultriciesornareelit.org                         ','Pellentesque Tincidunt Tempus LLP                                                                   ','0514587918','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('18','1','4','CP 316, 6519 Iaculis Route                                                                          ','276463','sit amet risus. Donec egestas. Aliquam nec enim. Nunc                                               ','187','odio@sitamet.org                                  ','Ac LLP                                                                                              ','0598289598','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('19','2','2','Appartement 370-348 Ligula. Chemin                                                                  ','155957','rhoncus. Nullam velit dui, semper et, lacinia vitae,                                                ','189','consectetuer@ac.edu                               ','Elit Sed Consequat LLC                                                                              ','0277981736','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('22','1','8','3788 Magnis Route                                                                                   ','214116','justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras               ','109','litora@tortor.com                                 ','Curabitur Egestas Nunc Consulting                                                                   ','0314676881','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('23','2','7','Appartement 639-7975 Ultricies Impasse                                                              ','360767','ac facilisis facilisis, magna tellus faucibus leo, in lobortis                                      ','163','purus.mauris.a@nullaIn.ca                         ','Suspendisse Eleifend Consulting                                                                     ','0105048837','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('24','1','7','7290 In Ave                                                                                         ','422530','interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus                        ','51','tristique@ullamcorpereueuismod.co.uk              ','Nunc Lectus Pede Foundation                                                                         ','0171126345','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('25','3','7','CP 349, 6208 Nulla. Rd.                                                                             ','293886','urna. Vivamus molestie dapibus ligula.                                                              ','149','Donec.at@mi.ca                                    ','At Augue Id LLP                                                                                     ','0536682909','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('26','3','4','372-2628 Nulla Route                                                                                ','328879','suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci     ','143','Etiam@lacus.ca                                    ','Lectus Sit LLC                                                                                      ','0336273726','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('30','3','3','420 Amet Ave                                                                                        ','174489','Nam interdum enim non nisi. Aenean eget                                                             ','104','libero.Proin@aliquam.org                          ','Pede Nec Associates                                                                                 ','0514202610','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('31','3','4','761-589 Per Avenue                                                                                  ','538440','tempus non, lacinia at, iaculis quis, pede.                                                         ','162','eu.ultrices@Donec.com                             ','Id Ante Dictum Foundation                                                                           ','0448958676','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('32','2','4','CP 291, 1614 Aliquet. Chemin                                                                        ','132484','Suspendisse non leo. Vivamus nibh dolor,                                                            ','40','diam.Sed@NullamenimSed.ca                         ','Aliquet LLP                                                                                         ','0107242437','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('33','1','5','Appartement 271-4859 Turpis Impasse                                                                 ','766728','Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse  ','169','magna.nec.quam@velitinaliquet.co.uk               ','Pede Nec Ante Industries                                                                            ','0216166446','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('37','3','5','CP 820, 4005 Leo. Route                                                                             ','176849','Nunc lectus pede, ultrices a,                                                                       ','79','enim.diam@adipiscingfringillaporttitor.org        ','Ante Foundation                                                                                     ','0452372309','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('38','3','6','7169 Molestie Chemin                                                                                ','764233','sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum              ','73','Suspendisse.sagittis@idlibero.edu                 ','Fringilla Inc.                                                                                      ','0181838554','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('40','3','5','1246 Neque Av.                                                                                      ','103736','sodales purus, in molestie tortor                                                                   ','53','Aenean.eget@consectetuereuismod.edu               ','Est Mauris Rhoncus LLC                                                                              ','0392158438','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('43','3','7','Appartement 590-4109 Sed Rd.                                                                        ','681647','ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor.                                    ','178','pede.Suspendisse.dui@anteMaecenas.net             ','Faucibus Company                                                                                    ','0347331122','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('46','2','3','Appartement 999-4331 Dignissim Rue                                                                  ','660498','elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat                      ','83','aptent@non.edu                                    ','Posuere Consulting                                                                                  ','0214279062','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('47','2','3','CP 413, 887 Pede Chemin                                                                             ','737661','id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu.                      ','188','bibendum@imperdietnon.com                         ','Euismod Consulting                                                                                  ','0825751180','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('48','3','5','344-6944 Ac Chemin                                                                                  ','248391','auctor ullamcorper, nisl arcu iaculis enim,                                                         ','121','magna@dui.com                                     ','Et Consulting                                                                                       ','0112742988','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('49','1','4','Appartement 110-2442 Senectus Avenue                                                                ','582765','turpis nec mauris blandit mattis. Cras eget nisi dictum augue                                       ','50','velit@lobortis.net                                ','Iaculis Incorporated                                                                                ','0374749223','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('51','2','8','CP 219, 6008 Fermentum Av.                                                                          ','373282','sed pede. Cum sociis natoque penatibus et magnis                                                    ','81','luctus.ipsum.leo@lectus.org                       ','Eu Dolor Egestas Foundation                                                                         ','0398778031','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('52','2','6','Appartement 240-2283 Quis Rue                                                                       ','159378','mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris                               ','13','dapibus.id@Aliquam.edu                            ','Dolor Nonummy PC                                                                                    ','0898577306','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('53','3','8','CP 946, 6849 Praesent Route                                                                         ','559760','blandit mattis. Cras eget nisi dictum augue malesuada malesuada.                                    ','69','placerat.eget.venenatis@et.co.uk                  ','Diam LLP                                                                                            ','0500348764','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('55','3','2','217-864 Purus Rue                                                                                   ','340430','Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede.     ','123','augue.id.ante@pharetranibh.org                    ','Mollis PC                                                                                           ','0426275228','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('56','1','1','CP 206, 2442 Augue, Av.                                                                             ','327809','vitae, sodales at, velit. Pellentesque                                                              ','109','Nulla.eu.neque@gravidanuncsed.co.uk               ','A Malesuada Foundation                                                                              ','0360471861','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('57','2','1','365-9059 Imperdiet Av.                                                                              ','132104','sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse      ','62','Integer@uteratSed.com                             ','Tellus Corporation                                                                                  ','0369927244','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('58','3','5','902-7830 Et Chemin                                                                                  ','544487','in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla','177','sed.pede@felisadipiscingfringilla.com             ','Enim Sit Associates                                                                                 ','0402218696','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('59','1','7','368-335 Metus. Chemin                                                                               ','626253','interdum. Nunc sollicitudin commodo ipsum. Suspendisse                                              ','38','elementum.dui.quis@amet.ca                        ','Risus Donec Industries                                                                              ','0253895049','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('60','1','5','809-7012 Donec Chemin                                                                               ','40000','eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque             ','162','in.lobortis@nunc.com                              ','Vel Pede Blandit Institute                                                                          ','0879560483','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('61','2','2','9144 Mollis. Rue                                                                                    ','29665','Proin mi. Aliquam gravida mauris ut mi. Duis risus odio,                                            ','125','netus@ametrisus.co.uk                             ','Vehicula Et LLP                                                                                     ','0811552500','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('62','1','2','CP 204, 5061 Semper Avenue                                                                          ','344014','non, dapibus rutrum, justo. Praesent luctus. Curabitur                                              ','110','sagittis@ac.com                                   ','Fringilla Ltd                                                                                       ','0240216611','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('63','2','5','Appartement 459-4948 Ligula Rue                                                                     ','141518','Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor                             ','196','Aliquam.fringilla.cursus@liberoestcongue.org      ','Elit Nulla PC                                                                                       ','0235880808','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('66','1','8','294 Quis Av.                                                                                        ','462665','Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam                                    ','12','tristique.ac.eleifend@euismodest.co.uk            ','Posuere Limited                                                                                     ','0399200798','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('69','2','5','8377 Vel, Rd.                                                                                       ','630220','vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque                                 ','150','non@ridiculus.net                                 ','Aliquet Consulting                                                                                  ','0393071791','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('71','3','2','720-5049 Augue Chemin                                                                               ','269867','ac mattis velit justo nec ante.                                                                     ','96','egestas.a@turpisegestasFusce.net                  ','Convallis Ligula Donec Industries                                                                   ','0869428431','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('72','1','6','CP 137, 6238 Tortor, Avenue                                                                         ','615875','lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi               ','183','Cras@nonenimcommodo.co.uk                         ','Molestie LLP                                                                                        ','0143588087','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('73','3','6','391-8110 Mauris Avenue                                                                              ','399423','nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis                    ','158','ullamcorper.viverra.Maecenas@etmagnisdis.ca       ','Duis At Lacus Associates                                                                            ','0586320309','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('74','3','2','Appartement 422-2118 Molestie Avenue                                                                ','592754','Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget ','59','Etiam@maurisIntegersem.net                        ','Molestie Sodales Mauris Institute                                                                   ','0438857587','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('75','3','7','319 Vel Rue                                                                                         ','131293','purus mauris a nunc. In at                                                                          ','106','dis@perconubia.net                                ','Quis Diam Luctus Foundation                                                                         ','0288061141','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('76','1','4','CP 760, 5340 Interdum. Rue                                                                          ','186638','tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id,                             ','191','Cum.sociis@cursus.net                             ','Scelerisque Associates                                                                              ','0193732137','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('77','3','5','390-144 Lacinia Route                                                                               ','542019','nisl arcu iaculis enim, sit                                                                         ','65','nec.ligula@risusQuisquelibero.ca                  ','Penatibus Et Industries                                                                             ','0143712386','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('78','2','1','Appartement 651-5181 Ante Impasse                                                                   ','606242','Etiam bibendum fermentum metus. Aenean sed pede                                                     ','63','dolor@magnatellusfaucibus.net                     ','Dapibus Gravida Aliquam Associates                                                                  ','0809967209','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('80','1','2','9955 Turpis Rue                                                                                     ','794017','semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae                                  ','66','ornare.egestas@Curabiturvellectus.co.uk           ','Leo In Industries                                                                                   ','0452202774','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('81','1','4','CP 504, 6143 Aliquam Av.                                                                            ','151297','nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere                     ','36','sapien.molestie.orci@ullamcorpermagna.net         ','Eget Tincidunt Dui Limited                                                                          ','0263998829','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('82','2','3','431-6059 Nascetur Rue                                                                               ','208092','quis lectus. Nullam suscipit, est                                                                   ','60','adipiscing.elit@eu.com                            ','Est Ac Incorporated                                                                                 ','0263445623','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('86','3','7','Appartement 820-9091 Nec Rue                                                                        ','115186','sapien imperdiet ornare. In faucibus. Morbi vehicula.                                               ','151','placerat.velit.Quisque@senectuset.net             ','Lobortis Quam Associates                                                                            ','0554149548','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('91','3','2','6634 Sem Chemin                                                                                     ','476956','ornare lectus justo eu arcu. Morbi sit amet massa. Quisque                                          ','189','arcu@temporaugue.org                              ','Ligula Associates                                                                                   ','0291701756','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('94','3','5','5844 Pharetra, Avenue                                                                               ','582146','ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut,    ','81','ante.bibendum.ullamcorper@etmagnis.com            ','Aenean Company                                                                                      ','0447788456','2');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('96','1','2','818 Rhoncus. Rd.                                                                                    ','537768','Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit                              ','62','arcu@mollisIntegertincidunt.co.uk                 ','Bibendum Ullamcorper Associates                                                                     ','0456642412','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('98','1','8','812-1261 Blandit Ave                                                                                ','632588','convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt                             ','121','quam.Curabitur.vel@gravida.ca                     ','Fringilla Porttitor Industries                                                                      ','0235904560','1');
Insert into RENAUD.CLIENT (CLIENT_ID,NATURE_ID,ACTIVITE_ID,CLIENT_ADRESSE,CLIENT_CA,CLIENT_COMMGENERAUX,CLIENT_EFFECTIF,CLIENT_MAIL,CLIENT_RAISON_SOCIALE,CLIENT_TEL,CLIENT_TYPE) values ('100','1','2','CP 198, 9228 Suspendisse Route                                                                      ','248789','vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit.','104','Morbi.sit.amet@nisinibh.net                       ','Lacus Ut Foundation                                                                                 ','0862477290','1');
REM INSERTING into RENAUD.COLLABORATEUR
SET DEFINE OFF;
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('75','1','2','9557 Nullam Av.                                                                                     ','null                                                                                                ','45654',to_date('03/05/96','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'a.feugiat@diam.com                                ','0621122704','Etienne             ','Erwan               ','F','CDI','0463100917','MME','Rhemes-Notre-Dame   ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('76','1','11','Appartement 719-1047 Pede, Route                                                                    ','null                                                                                                ','59285',to_date('31/07/05','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'nec.leo@et.edu                                    ','0654251807','Lopez               ','Candice             ','M','STA','0104875868','MLE','Kamarhati           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('77','1','10','832-5867 Leo. Impasse                                                                               ','null                                                                                                ','69511',to_date('13/10/15','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'ut@Quisqueporttitoreros.net                       ','0741718043','Barre               ','Agathe              ','F','CDD','0513802818','MR ','Appelterre-Eichem   ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('78','1','5','Appartement 126-8423 Tellus Route                                                                   ','null                                                                                                ','71407',to_date('24/11/13','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'fringilla.euismod@ut.com                          ','0605312956','Leveque             ','Jade                ','F','CDD','0345643328','MME','Llaillay            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('79','1','4','787-2460 Dictum Avenue                                                                              ','null                                                                                                ','99118',to_date('16/06/98','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Nunc.ut.erat@lacus.com                            ','0619052209','Brunet              ','Salomé             ','F','CDD','0143956251','MME','Saint-Pierre        ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('80','1','3','Appartement 667-7042 Elit. Chemin                                                                   ','null                                                                                                ','47642',to_date('13/12/15','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'neque@Integer.co.uk                               ','0635561185','Paul                ','Émile              ','M','STA','0275163893','MLE','Mâcon              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('81','1','10','Appartement 169-5725 Ac Rue                                                                         ','null                                                                                                ','98445',to_date('11/03/04','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'sed@Proinvel.org                                  ','0602538728','Cordier             ','Dimitri             ','F','STA','0569437998','MME','Ilkeston            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('82','1','6','Appartement 737-9761 Convallis Ave                                                                  ','null                                                                                                ','81565',to_date('25/04/96','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'lobortis.ultrices.Vivamus@egestas.edu             ','0628124422','Renault             ','Clotilde            ','M','CDD','0319125873','MME','Gloucester          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('83','1','6','CP 208, 4308 Velit Rd.                                                                              ','null                                                                                                ','47250',to_date('13/11/00','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'fringilla@erat.edu                                ','0774999048','Gay                 ','Margot              ','F','CDI','0474982475','MR ','Saint-Malo          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('84','1','1','121-2717 Massa. Chemin                                                                              ','null                                                                                                ','71686',to_date('18/10/11','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'nulla.Integer@metusvitae.com                      ','0669500393','Meunier             ','Julie               ','F','CDD','0404754423','MLE','Tejar               ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('85','1','10','7481 Elit, Ave                                                                                      ','null                                                                                                ','52955',to_date('23/07/01','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'ac.fermentum@semvitaealiquam.ca                   ','0717892544','Hubert              ','Mohamed             ','F','STA','0544194503','MME','Eernegem            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('86','1','9','CP 872, 4960 Ultricies Rd.                                                                          ','null                                                                                                ','31883',to_date('17/03/06','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'a.facilisis.non@odiotristiquepharetra.co.uk       ','0623193674','Leclerc             ','Mohamed             ','M','CDI','0488031540','MLE','Lang                ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('87','1','10','CP 761, 2087 Enim, Rue                                                                              ','null                                                                                                ','62195',to_date('30/03/11','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'turpis@vehicula.edu                               ','0658601665','Renault             ','Martin              ','F','CDD','0207692195','MME','Lustin              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('88','1','4','8307 Rutrum Chemin                                                                                  ','null                                                                                                ','46243',to_date('03/06/03','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'in.consectetuer@dapibus.ca                        ','0624978734','Hubert              ','Sarah               ','M','CDD','0510698325','MLE','Delianuova          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('89','1','3','6624 Imperdiet Ave                                                                                  ','null                                                                                                ','52518',to_date('30/05/98','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Phasellus.nulla.Integer@nullaanteiaculis.ca       ','0617467018','Garnier             ','Clotilde            ','M','CDI','0299651210','MLE','Mysore              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('90','1','6','Appartement 507-1031 At Rue                                                                         ','null                                                                                                ','06553',to_date('09/11/12','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'libero@aliquetodio.edu                            ','0784881044','Dufour              ','Lily                ','F','CDI','0557793345','MME','Monghidoro          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('91','1','1','CP 377, 6142 Facilisis Impasse                                                                      ','null                                                                                                ','65570',to_date('29/11/01','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'massa.Mauris@tempusscelerisque.net                ','0648348410','Cordier             ','Marion              ','M','STA','0382949332','MME','Oderzo              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('92','1','7','CP 919, 1530 Pellentesque Impasse                                                                   ','null                                                                                                ','11805',to_date('18/10/07','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'gravida.sagittis.Duis@volutpat.co.uk              ','0691508343','Cordier             ','Cloé               ','F','STA','0291638239','MME','Rendsburg           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('1','1','2','CP 569, 5815 Morbi Ave                                                                              ','null                                                                                                ','31722',to_date('08/01/07','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'quis@velit.org                                    ','0673762175','METZ                ','Renaud              ','H','CDI','0447016078','M  ','Tomé               ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('2','1','2','CP 569, 5815 Morbi Ave                                                                              ','null                                                                                                ','31722',to_date('08/01/07','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'quis@velit.org                                    ','0673762175','Simon               ','Elsa                ','F','CDI','0447016078','MME','Tomé               ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('3','1','7','9140 Quisque Ave                                                                                    ','null                                                                                                ','23577',to_date('14/08/03','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'mauris.ut.mi@Namnullamagna.org                    ','0609626395','Gonzalez            ','Mattéo             ','F','CDD','0120722723','MME','K?dzierzyn-Ko?le  ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('4','1','6','887-2787 Suspendisse Chemin                                                                         ','null                                                                                                ','83468',to_date('15/03/16','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'commodo.hendrerit.Donec@iaculisquispede.com       ','0777556426','Nguyen              ','Ambre               ','F','CDI','0409975131','MME','Frankenthal         ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('5','1','8','9650 Ultrices, Rue                                                                                  ','null                                                                                                ','84138',to_date('25/04/11','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'luctus.ipsum.leo@enimconsequatpurus.org           ','0630477995','Lopez               ','Julien              ','M','STA','0504804279','MME','Leffinge            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('6','1','1','981-8262 Nec, Chemin                                                                                ','null                                                                                                ','42763',to_date('17/03/15','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'at.risus.Nunc@nunc.edu                            ','0792805741','Gautier             ','Louna               ','F','STA','0477876931','MLE','Eastbourne          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('7','1','11','193-6439 Interdum Avenue                                                                            ','null                                                                                                ','64685',to_date('26/06/07','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'sociis@Proin.com                                  ','0755190431','Francois            ','Éloïse            ','M','CDI','0350380583','MR ','Ilesa               ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('8','1','2','344-5472 Justo Av.                                                                                  ','null                                                                                                ','51901',to_date('16/10/02','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Nunc.ac@tortor.com                                ','0749303356','Menard              ','Ethan               ','F','CDD','0100169624','MLE','Beringen            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('9','1','6','1658 Sem, Chemin                                                                                    ','null                                                                                                ','21567',to_date('07/07/10','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'tincidunt.adipiscing@aliquetProinvelit.org        ','0658566209','Dupont              ','Baptiste            ','F','CDD','0427771236','MR ','Morinville          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('10','1','3','CP 287, 5516 Feugiat Rd.                                                                            ','null                                                                                                ','20574',to_date('25/06/06','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'ut.cursus@velitin.ca                              ','0697403631','Bernard             ','Jules               ','F','CDI','0458348859','MLE','Rovereto            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('11','1','11','7500 Dui, Chemin                                                                                    ','null                                                                                                ','35621',to_date('13/12/15','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'dignissim.pharetra.Nam@odio.ca                    ','0607011342','Duval               ','Léonard            ','F','CDI','0105305859','MME','Gudivada            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('12','1','10','CP 617, 7276 Sit Avenue                                                                             ','null                                                                                                ','39945',to_date('16/10/02','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Maecenas@dolor.edu                                ','0748480457','Garnier             ','Lola                ','F','CDD','0289168970','MLE','Smoky Lake          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('13','1','5','367 Dui Av.                                                                                         ','null                                                                                                ','83990',to_date('12/08/97','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'leo.Vivamus@vitaealiquameros.ca                   ','0770801110','Picard              ','Marion              ','M','CDD','0498601618','MME','Vlezenbeek          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('14','1','9','162 Ut Chemin                                                                                       ','null                                                                                                ','06239',to_date('14/02/98','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'dictum.cursus@loremvehicula.ca                    ','0790241051','Deschamps           ','Diego               ','M','CDI','0500124131','MR ','Treguaco            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('15','1','10','240 Sed Ave                                                                                         ','null                                                                                                ','32242',to_date('28/11/03','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Phasellus.in.felis@ac.org                         ','0667161273','Brunet              ','Théo               ','F','CDD','0231554358','MME','Liévin             ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('16','1','10','Appartement 324-3656 Neque Ave                                                                      ','null                                                                                                ','80702',to_date('19/03/02','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'tellus@Proinvel.edu                               ','0756051322','Brunet              ','Esteban             ','F','CDD','0215986106','MR ','Develi              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('17','1','11','CP 776, 1486 Ante. Impasse                                                                          ','null                                                                                                ','66753',to_date('24/01/99','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'enim.mi@nec.co.uk                                 ','0773903920','Vasseur             ','Marwane             ','F','CDI','0112696790','MME','Indianapolis        ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('18','1','8','9975 Euismod Chemin                                                                                 ','null                                                                                                ','30619',to_date('19/03/06','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'interdum.Sed.auctor@et.org                        ','0678256641','Gay                 ','Evan                ','F','CDD','0598199126','MLE','Hoeilaart           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('19','1','9','648-8207 Maecenas Impasse                                                                           ','null                                                                                                ','96422',to_date('19/10/12','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'adipiscing.lobortis.risus@natoquepenatibus.co.uk  ','0783941487','Dumas               ','Félix              ','F','CDD','0211284715','MME','Exeter              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('20','1','1','Appartement 725-2397 Augue. Rue                                                                     ','null                                                                                                ','77984',to_date('13/02/10','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'quam.vel@fames.com                                ','0638868475','Duval               ','Mathieu             ','M','CDD','0416009976','MME','Melville            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('21','1','7','Appartement 631-3702 Malesuada. Impasse                                                             ','null                                                                                                ','82659',to_date('28/07/04','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'luctus.ipsum.leo@ullamcorperviverraMaecenas.co.uk ','0635590804','Roy                 ','Agathe              ','F','CDD','0150154137','MR ','Nakusp              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('22','1','7','CP 523, 2581 Non, Av.                                                                               ','null                                                                                                ','81900',to_date('31/07/10','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'nunc.ullamcorper.eu@convalliserateget.ca          ','0604101973','Durand              ','Romain              ','M','CDI','0485775394','MR ','St. David''s         ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('23','1','3','Appartement 230-9099 Faucibus Chemin                                                                ','null                                                                                                ','52667',to_date('04/02/96','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'eros.Proin@gravidanuncsed.co.uk                   ','0612906033','Bouvier             ','Valentine           ','F','CDI','0301833110','MME','Pergola             ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('24','1','6','449-2159 Curabitur Ave                                                                              ','null                                                                                                ','88210',to_date('19/10/06','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'enim@nonenimMauris.co.uk                          ','0680402356','Huet                ','Julien              ','M','CDD','0319454474','MLE','Fort Worth          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('25','1','1','Appartement 386-4849 Egestas. Avenue                                                                ','null                                                                                                ','04583',to_date('14/07/03','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Sed.diam.lorem@interdumenim.co.uk                 ','0699089409','Noel                ','Ambre               ','M','STA','0121271524','MLE','Strona              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('26','1','4','Appartement 420-9933 Neque. Impasse                                                                 ','null                                                                                                ','63656',to_date('10/07/16','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'eu@feugiat.net                                    ','0695197416','Marty               ','Fanny               ','M','STA','0154474887','MME','Kawawachikamach     ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('27','1','11','Appartement 781-6698 Mauris Rd.                                                                     ','null                                                                                                ','01416',to_date('09/04/97','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'nec.enim.Nunc@rutrumjusto.ca                      ','0733824290','Roy                 ','Adam                ','F','CDD','0397537052','MME','Vegreville          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('28','1','11','3101 Lectus, Route                                                                                  ','null                                                                                                ','40241',to_date('30/07/09','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'sapien.Nunc.pulvinar@semperrutrum.ca              ','0644721751','Girard              ','Carla               ','F','CDI','0198182575','MLE','Nizip               ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('29','1','3','Appartement 307-4844 Pulvinar Rue                                                                   ','null                                                                                                ','69220',to_date('13/10/06','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'amet.luctus@aliquetvelvulputate.com               ','0637862884','Gautier             ','Zoé                ','M','CDD','0303900847','MLE','Divinópolis        ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('30','1','9','CP 948, 2931 Cursus. Chemin                                                                         ','null                                                                                                ','37603',to_date('18/03/97','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Lorem.ipsum@lobortis.net                          ','0607434010','Blanc               ','Martin              ','M','CDI','0265731849','MLE','Fogliano Redipuglia ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('31','1','9','CP 345, 1128 Mi Avenue                                                                              ','null                                                                                                ','69824',to_date('25/03/95','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'velit@purus.net                                   ','0675632728','Lucas               ','Alicia              ','M','STA','0559674746','MME','Mottola             ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('32','1','11','Appartement 623-7420 Laoreet Rue                                                                    ','null                                                                                                ','60520',to_date('09/11/14','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'quam.vel.sapien@mollisneccursus.edu               ','0739206381','Masson              ','Killian             ','M','CDD','0252859774','MME','Sittard             ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('33','1','5','5403 Mauris Av.                                                                                     ','null                                                                                                ','98995',to_date('22/06/14','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'parturient.montes.nascetur@nunc.com               ','0706884856','Rodriguez           ','Thomas              ','M','CDD','0291348745','MME','Pulderbos           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('34','1','8','Appartement 129-2175 Mauris Impasse                                                                 ','null                                                                                                ','36698',to_date('09/07/05','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'mollis@In.com                                     ','0641987754','Millet              ','Guillaume           ','M','STA','0427929567','MLE','Chiari              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('35','1','6','Appartement 839-3452 Nullam Rue                                                                     ','null                                                                                                ','45729',to_date('15/05/95','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'enim.Etiam@laciniavitae.edu                       ','0685107576','Breton              ','Lola                ','M','STA','0292377580','MR ','Ulloa (Barrial)     ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('36','1','7','CP 589, 1128 Ultricies Av.                                                                          ','null                                                                                                ','46415',to_date('26/09/04','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'fermentum.risus.at@sem.net                        ','0783840649','Garnier             ','Esteban             ','M','STA','0471582225','MR ','Isle-aux-Coudres    ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('37','1','8','5904 Elit. Avenue                                                                                   ','null                                                                                                ','05092',to_date('24/03/16','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'est@orci.com                                      ','0630714814','Durand              ','Cédric             ','M','CDD','0184943094','MME','New Glasgow         ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('39','1','7','Appartement 545-1767 Cursus Ave                                                                     ','null                                                                                                ','54628',to_date('26/02/96','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'adipiscing.elit.Etiam@euismod.com                 ','0623654570','Gautier             ','Louise              ','F','CDD','0239992498','MME','Thirimont           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('40','1','6','CP 120, 5412 Mauris Ave                                                                             ','null                                                                                                ','18646',to_date('02/11/07','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'eget@Vestibulum.org                               ','0629121920','Leroux              ','Océane             ','M','CDD','0585926577','MR ','Owensboro           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('41','1','6','875-7392 Nulla Av.                                                                                  ','null                                                                                                ','08276',to_date('26/05/09','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'pellentesque@Suspendisse.edu                      ','0734186097','Etienne             ','Emma                ','F','CDD','0275647647','MR ','Cles                ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('42','1','7','3802 Nam Chemin                                                                                     ','null                                                                                                ','07612',to_date('09/05/10','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'lobortis.Class@mollisDuissit.net                  ','0746877444','Perez               ','Zoé                ','F','STA','0111978153','MR ','Orta San Giulio     ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('43','1','8','CP 794, 2674 Iaculis Av.                                                                            ','null                                                                                                ','70411',to_date('21/04/08','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'blandit.at.nisi@eleifendnec.net                   ','0608146444','Arnaud              ','Romane              ','M','STA','0272699085','MR ','Villers-lez-Heest   ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('44','1','11','152-9693 A, Avenue                                                                                  ','null                                                                                                ','79816',to_date('07/10/97','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'sem.egestas.blandit@leoCrasvehicula.co.uk         ','0716353256','Vasseur             ','Lou                 ','M','STA','0528052336','MME','Ternat              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('45','1','8','Appartement 859-265 Aliquet Rue                                                                     ','null                                                                                                ','29064',to_date('09/07/13','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'sem@vitaeorciPhasellus.co.uk                      ','0770042053','Maillard            ','Françoise          ','M','CDI','0320845617','MME','Newmarket           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('46','1','3','Appartement 391-7503 Ullamcorper, Av.                                                               ','null                                                                                                ','71871',to_date('17/06/16','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'est.ac.facilisis@acfacilisisfacilisis.net         ','0695277850','Pasquier            ','Carla               ','F','CDI','0141406408','MR ','Rockville           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('47','1','2','326-243 Sapien. Ave                                                                                 ','null                                                                                                ','02440',to_date('18/03/00','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'interdum.libero@ipsumPhasellusvitae.org           ','0621776890','Lefebvre            ','Mathilde            ','M','CDI','0236965681','MLE','Ortonovo            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('48','1','2','Appartement 802-9400 Quisque Av.                                                                    ','null                                                                                                ','06116',to_date('27/09/06','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'nibh.vulputate.mauris@loremvehiculaet.ca          ','0793785807','Roy                 ','Arthur              ','F','CDI','0454093987','MR ','Owen Sound          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('49','1','4','433-8351 Cursus. Avenue                                                                             ','null                                                                                                ','71776',to_date('14/03/13','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'id.sapien@necmollis.org                           ','0685240962','Roussel             ','Loane               ','F','STA','0309746164','MLE','Rotem               ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('50','1','2','Appartement 953-5723 Suscipit Ave                                                                   ','null                                                                                                ','95676',to_date('08/02/12','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'non@lobortisnisi.edu                              ','0656676404','Fabre               ','Guillaume           ','F','CDI','0479862549','MME','Orciano Pisano      ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('51','1','9','Appartement 944-2802 A Av.                                                                          ','null                                                                                                ','59506',to_date('07/08/03','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'neque@dignissimMaecenasornare.com                 ','0754590041','Jean                ','Océane             ','M','CDD','0170161765','MR ','Val Rezzo           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('52','1','8','952-403 Commodo Route                                                                               ','null                                                                                                ','76977',to_date('09/09/06','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'mi@Integer.edu                                    ','0715702340','Denis               ','Rosalie             ','M','CDD','0482998954','MME','Episcopia           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('53','1','5','642-9919 Adipiscing Ave                                                                             ','null                                                                                                ','13634',to_date('24/11/00','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'natoque.penatibus.et@nequeMorbi.edu               ','0611755679','Louis               ','Florian             ','M','CDI','0275714911','MME','San Lorenzo         ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('54','1','3','CP 324, 457 A, Route                                                                                ','null                                                                                                ','26054',to_date('05/03/11','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'nisi.a@liberoatauctor.net                         ','0690410743','Lecomte             ','Théo               ','M','CDI','0143015568','MLE','Alma                ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('55','1','2','Appartement 474-5563 Ac Avenue                                                                      ','null                                                                                                ','57414',to_date('11/11/98','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'mauris.id.sapien@elementumloremut.com             ','0712498927','Adam                ','Léane              ','F','STA','0160919456','MME','Vagli Sotto         ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('56','1','10','Appartement 714-7320 Cum Route                                                                      ','null                                                                                                ','45759',to_date('13/07/02','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'amet@etmagnis.edu                                 ','0741067297','Durand              ','Alexandre           ','M','CDI','0374472221','MME','Bassano in Teverina ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('57','1','11','CP 339, 3248 Magna. Rue                                                                             ','null                                                                                                ','57324',to_date('10/01/09','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'non.quam@tinciduntnuncac.org                      ','0664130821','Lemaire             ','Justine             ','M','CDI','0445332990','MLE','Trollhättan        ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('58','1','6','Appartement 525-7952 Metus Rue                                                                      ','null                                                                                                ','16531',to_date('15/12/04','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'a@Quisque.edu                                     ','0777992768','Rousseau            ','Clémence           ','F','CDI','0285974583','MME','Hamme               ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('59','1','9','5671 Aenean Route                                                                                   ','null                                                                                                ','09408',to_date('20/10/15','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'consectetuer.adipiscing@interdum.co.uk            ','0685434032','Benoit              ','Éléna             ','M','STA','0101898356','MME','Villata             ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('60','1','7','664-8803 Mauris Ave                                                                                 ','null                                                                                                ','35595',to_date('12/12/95','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'elit.pharetra.ut@euismodmauriseu.net              ','0771090545','Vincent             ','Baptiste            ','M','STA','0425806718','MR ','North Battleford    ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('61','1','4','Appartement 673-7518 Vitae Avenue                                                                   ','null                                                                                                ','01433',to_date('07/12/04','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'est.Mauris@sodalesMauris.com                      ','0700169091','Gay                 ','Timothée           ','F','CDD','0198366979','MLE','Wellington          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('62','1','9','231-3524 Ac Av.                                                                                     ','null                                                                                                ','82488',to_date('24/02/14','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'lacinia.Sed.congue@temporest.org                  ','0601844008','Fabre               ','Mélanie            ','M','CDD','0502929077','MLE','Cañete             ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('63','1','6','Appartement 718-5586 Viverra. Rue                                                                   ','null                                                                                                ','77896',to_date('11/06/99','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Nam@Morbi.ca                                      ','0615620456','Vasseur             ','Kimberley           ','M','CDD','0107188686','MME','Prince Albert       ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('64','1','8','CP 581, 8503 Eros Chemin                                                                            ','null                                                                                                ','84809',to_date('14/06/03','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'vitae.sodales@ligulaAeneaneuismod.org             ','0779478641','Lacroix             ','Roméo              ','F','CDI','0215444951','MLE','Blaenau Ffestiniog  ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('65','1','8','Appartement 105-2563 Et, Ave                                                                        ','null                                                                                                ','04932',to_date('25/10/98','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'nec.luctus@odio.org                               ','0671926627','Renaud              ','Léo                ','F','STA','0299680971','MLE','Fayetteville        ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('66','1','10','1914 Tincidunt, Avenue                                                                              ','null                                                                                                ','52159',to_date('08/06/97','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'natoque.penatibus.et@loremeget.com                ','0769540613','Collin              ','Éloïse            ','F','CDI','0206602830','MR ','La Higuera          ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('67','1','1','537-1187 Molestie Chemin                                                                            ','null                                                                                                ','29895',to_date('24/12/01','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'odio.semper@lectus.co.uk                          ','0746562825','Lefebvre            ','Bienvenue           ','M','CDD','0269823837','MME','Glendale            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('68','1','2','CP 955, 2468 Pellentesque Rd.                                                                       ','null                                                                                                ','15972',to_date('16/07/01','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'volutpat.Nulla@litora.ca                          ','0699506439','Lemoine             ','Alice               ','F','CDD','0381278944','MLE','Cork                ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('69','1','5','762-6066 Imperdiet Ave                                                                              ','null                                                                                                ','96562',to_date('25/10/98','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'neque@malesuadaaugueut.com                        ','0717247806','Marty               ','Simon               ','M','STA','0161208553','MME','Olympia             ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('71','1','3','184-3801 Pede Ave                                                                                   ','null                                                                                                ','89930',to_date('18/09/07','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Curabitur.egestas@ornaresagittisfelis.net         ','0606105233','Richard             ','Louna               ','M','STA','0483666128','MR ','Sivry-Rance         ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('72','1','4','CP 370, 6759 Felis Ave                                                                              ','null                                                                                                ','95505',to_date('19/08/07','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Phasellus.elit.pede@enimNuncut.ca                 ','0770290284','Poirier             ','Yohan               ','M','STA','0181290255','MLE','Lakeland County     ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('73','1','3','7091 Non, Route                                                                                     ','null                                                                                                ','39230',to_date('14/06/08','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'neque.non@Maecenas.co.uk                          ','0711050877','Noel                ','Capucine            ','M','CDD','0384074217','MLE','Poviglio            ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('74','1','8','524-3672 Consectetuer Impasse                                                                       ','null                                                                                                ','76310',to_date('17/01/97','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'mi.Duis.risus@fermentumconvallisligula.edu        ','0698008416','Simon               ','Lola                ','F','STA','0105057628','MME','Nieuwerkerken       ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('93','1','2','388-6863 Vitae Avenue                                                                               ','null                                                                                                ','03101',to_date('07/10/02','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'nec.metus.facilisis@semeget.co.uk                 ','0785816446','Cousin              ','Théo               ','M','STA','0594061115','MR ','Dillingen           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('94','1','10','Appartement 640-2180 Euismod Rd.                                                                    ','null                                                                                                ','12195',to_date('27/08/04','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'in.consequat.enim@arcu.net                        ','0738506778','Carre               ','Lauriane            ','M','STA','0254929025','MLE','Eugene              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('95','1','2','316-1080 Tristique Chemin                                                                           ','null                                                                                                ','24390',to_date('10/06/95','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'faucibus.ut.nulla@mauris.org                      ','0751834657','Boulanger           ','Timothée           ','M','STA','0527305675','MLE','Ways                ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('96','1','11','567 Ante Chemin                                                                                     ','null                                                                                                ','15108',to_date('27/03/95','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Curabitur.egestas@Duiselementum.com               ','0696318331','Picard              ','Émile              ','F','CDD','0176791138','MR ','Cantley             ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('97','1','9','Appartement 122-486 Ac Ave                                                                          ','null                                                                                                ','64986',to_date('17/05/03','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'elementum.dui@acnulla.com                         ','0620311283','Schmitt             ','Manon               ','F','STA','0548657901','MLE','San Pablo           ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('98','1','11','933-9129 Vivamus Avenue                                                                             ','null                                                                                                ','40264',to_date('21/11/09','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'laoreet.libero.et@nequevenenatislacus.com         ','0714509947','Marty               ','Jérémy            ','F','CDI','0366426402','MR ','Leduc               ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('99','1','8','425-9850 Magna. Avenue                                                                              ','null                                                                                                ','16086',to_date('05/10/97','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'egestas@etmagnisdis.net                           ','0763215165','Paris               ','Loevan              ','M','CDD','0288187227','MLE','Rutten              ');
Insert into RENAUD.COLLABORATEUR (COLLA_ID,COL_COLLA_ID,FONCTION_ID,COLLA_ADRESSE1,COLLA_ADRESSE2,COLLA_CP,COLLA_DATE_EMBAUCHE,COLLA_DATE_FIN_CONTRAT,COLLA_MAIL,COLLA_MOBILE,COLLA_NOM,COLLA_PRENOM,COLLA_SEXE,COLLA_STATUT,COLLA_TEL,COLLA_TITRE,COLLA_VILLE) values ('100','1','6','Appartement 954-7270 Est Rue                                                                        ','null                                                                                                ','28975',to_date('11/11/08','DD/MM/RR'),to_date('26/07/17','DD/MM/RR'),'Proin.velit@utpellentesque.ca                     ','0656251057','Breton              ','Clotilde            ','M','CDI','0567246798','MME','Buren               ');
REM INSERTING into RENAUD.CONTACT
SET DEFINE OFF;
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('1','metus.In.nec@mus.net                              ',' Acheteur                                         ','0613900953','Brun                     ','Chaïma                  ','0858036134');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('2','elit@commodohendreritDonec.net                    ','     Directeur des achats                         ','0775369706','David                    ','Thibault                 ','0303409236');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('3','feugiat.Lorem.ipsum@amet.org                      ',' Directeur général                              ','0738492591','Collin                   ','Léa                     ','0507729630');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('4','venenatis@magnamalesuada.com                      ',' Directeur technique                              ','0735925561','Le goff                  ','Catherine                ','0136827991');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('5','Nam@blandit.org                                   ',' Directeur des systèmes d’information          ','0635076918','Vincent                  ','Alexis                   ','0449526309');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('6','metus.Aenean@imperdiet.ca                         ',' Directeur financier                              ','0713932405','Petit                    ','Océane                  ','0266042411');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('7','ut.molestie@velarcu.com                           ',' Hôtesse d’accueil                             ','0686477868','David                    ','Juliette                 ','0173670052');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('8','et@Nunc.ca                                        ',' directeur informatique                           ','0688360023','Michel                   ','Bienvenue                ','0525931118');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('9','neque.vitae@vitaeodio.edu                         ',' Responsable administratif                        ','0787344763','Louis                    ','Renaud                   ','0416770262');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('10','nec@ultricesa.com                                 ',' Directeur des ressources humaines                ','0741133814','Le roux                  ','Macéo                   ','0100263800');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('11','Aenean.gravida@mauris.com                         ',' Responsable développement                       ','0647647698','Bouvier                  ','Adrien                   ','0245183910');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('12','commodo@dui.edu                                   ',' Directeur commercial                             ','0711875187','Muller                   ','Anthony                  ','0494711771');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('13','velit@ultricesDuis.co.uk                          ',' Assistant juridique                              ','0639644752','Andre                    ','Malo                     ','0548380678');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('14','nec.metus@in.ca                                   ',' directeur informatique                           ','0606472167','Jacquet                  ','Arthur                   ','0213033253');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('15','laoreet.ipsum@vitaenibh.com                       ',' Responsable juridique                            ','0609068299','Lucas                    ','Titouan                  ','0167597378');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('16','Suspendisse.non@quis.edu                          ',' Directeur technique                              ','0794053429','Morel                    ','Mathis                   ','0590872525');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('17','libero.dui@massa.com                              ',' Responsable service clients                      ','0609269046','Bonnet                   ','Lina                     ','0236410689');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('18','dignissim.tempor@adipiscingfringillaporttitor.ca  ',' Assistant achats                                 ','0650249220','Morin                    ','Yasmine                  ','0450843638');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('19','a.malesuada.id@sitamet.ca                         ',' Directeur recherche et développement            ','0718847183','Charpentier              ','Tristan                  ','0484356466');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('20','metus.eu.erat@elitelit.net                        ',' Responsable juridique                            ','0759927891','Barre                    ','Roméo                   ','0156856806');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('21','luctus.sit@Crasdolordolor.co.uk                   ',' Chef de projet informatique                      ','0623407569','Paul                     ','Salomé                  ','0858769348');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('22','sit.amet.massa@pedenec.org                        ',' Hôtesse d’accueil                             ','0749045532','Mathieu                  ','Jérémy                 ','0111226392');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('23','dictum@Aenean.co.uk                               ',' Responsable recherche                            ','0690163182','Roussel                  ','Agathe                   ','0291511102');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('24','Duis.risus.odio@sitametconsectetuer.co.uk         ',' Directeur industriel                             ','0738145696','Renaud                   ','Lamia                    ','0358811388');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('25','Integer.eu.lacus@mauris.ca                        ',' Directeur général                              ','0636561696','Rolland                  ','Lola                     ','0862700575');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('26','facilisi@convallisdolorQuisque.net                ',' Secrétaire                                      ','0722712143','Weber                    ','Lana                     ','0162509093');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('27','nonummy@lectus.com                                ',' Directeur supply chain                           ','0641619865','Charpentier              ','Anaël                   ','0865941367');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('28','laoreet@Pellentesque.org                          ',' Directeur marketing                              ','0648206774','Lefevre                  ','Sarah                    ','0268257905');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('29','Donec.tempus@ut.com                               ',' Assistant juridique                              ','0727702084','Charpentier              ','Alice                    ','0522488176');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('30','ut@aarcu.edu                                      ',' Directeur technique                              ','0788929823','Collin                   ','Lilou                    ','0206363681');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('31','enim@litoratorquent.com                           ',' Directeur des ressources humaines                ','0678109996','Le gall                  ','Félix                   ','0512179354');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('32','vitae.diam@idrisus.org                            ',' Responsable hygiène sécurité environnement    ','0692135451','Olivier                  ','Gabin                    ','0372671296');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('33','convallis@mi.net                                  ',' Directeur financier                              ','0739188292','Lambert                  ','Élise                   ','0826929485');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('34','Aenean.eget.metus@sapien.com                      ',' Technicien de gestion administrative             ','0647246346','Carre                    ','Jade                     ','0877840187');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('35','eleifend.egestas.Sed@euismodetcommodo.edu         ',' Directeur marketing                              ','0659253930','Jean                     ','Lina                     ','0397405445');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('36','Sed.eu@sem.co.uk                                  ',' Responsable administration des ventes            ','0687181118','Guyot                    ','Gaspard                  ','0587944870');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('37','rhoncus.Nullam.velit@sempercursusInteger.co.uk    ',' Assistant juridique                              ','0795368568','Benoit                   ','Mélanie                 ','0176058226');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('38','fermentum.arcu@mollis.org                         ',' Directeur général adjoint                      ','0779176259','Leveque                  ','Nolan                    ','0857170118');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('39','at@arcuiaculis.org                                ',' Directeur des systèmes d’information          ','0619887515','Bouvier                  ','Maëlle                  ','0411776005');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('40','cubilia.Curae.Phasellus@anteipsum.co.uk           ',' Responsable expéditions                         ','0704296313','Le gall                  ','Capucine                 ','0275896972');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('41','Etiam.vestibulum@morbi.ca                         ',' Directeur des ventes export                      ','0720376341','Renaud                   ','Salomé                  ','0845199361');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('42','dictum.cursus@disparturientmontes.edu             ',' Directeur logistique                             ','0793043944','Royer                    ','Chaïma                  ','0451178956');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('43','et.pede@ametnullaDonec.edu                        ',' Directeur industriel                             ','0779798235','Vasseur                  ','Anaël                   ','0591634604');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('44','Suspendisse.tristique@eleifendegestasSed.edu      ',' Secrétaire de direction                         ','0656906401','Benoit                   ','Zoé                     ','0216294813');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('45','eros.Nam.consequat@nulla.ca                       ',' Responsable de magasin                           ','0763567163','Faure                    ','Timothée                ','0357142083');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('46','dictum.augue@dolor.edu                            ',' Directeur technique                              ','0634720605','Charpentier              ','Anaël                   ','0283007030');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('47','leo.in@ipsumprimisin.co.uk                        ',' Responsable approvisionnements                   ','0647325802','Leclercq                 ','Mathéo                  ','0598506363');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('48','amet.consectetuer@vitaesodalesnisi.co.uk          ','Chargé de communication                          ','0726393964','Bonnet                   ','Julie                    ','0425013546');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('49','imperdiet@Duis.net                                ',' Responsable recherche                            ','0658070846','Lefevre                  ','Éloïse                 ','0103982178');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('50','sagittis.augue@Morbi.net                          ',' Responsable du service entretien et maintenance  ','0780875023','Pierre                   ','Gilbert                  ','0340251709');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('51','lacus.Quisque@loremipsumsodales.ca                ',' Assistant juridique                              ','0699799511','Guillaume                ','Chloé                   ','0596399860');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('52','vitae@felis.net                                   ',' Responsable service clients                      ','0672135154','Caron                    ','Noah                     ','0496090282');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('53','dis.parturient@neccursusa.edu                     ',' Directeur général adjoint                      ','0751387208','Dumont                   ','Samuel                   ','0477061317');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('54','Donec.consectetuer@velit.com                      ',' Directeur général                              ','0750836805','Barbier                  ','Guillaume                ','0139070891');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('55','In.ornare@est.com                                 ',' Responsable marketing                            ','0718851408','Martinez                 ','Kyllian                  ','0526048379');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('56','rutrum.Fusce.dolor@nonquamPellentesque.co.uk      ',' Responsable recherche                            ','0717978539','Bourgeois                ','Lou                      ','0115870364');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('57','ligula.Aenean.euismod@ullamcorpereu.ca            ',' Directeur juridique                              ','0603503257','Aubry                    ','Tom                      ','0363942912');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('58','libero.dui.nec@nibhenim.net                       ',' Directeur marketing                              ','0613994790','Poirier                  ','Lamia                    ','0350639432');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('59','quam.dignissim.pharetra@vehiculaaliquetlibero.com ',' Assistant marketing                              ','0615385386','Leclercq                 ','Félix                   ','0149598887');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('60','eget.tincidunt@mollisnec.org                      ',' Responsable marketing                            ','0795331325','Pierre                   ','Diego                    ','0308692654');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('61','Nam.interdum.enim@enimcommodohendrerit.ca         ',' Directeur d’une division                       ','0737676870','Deschamps                ','Victor                   ','0212636813');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('62','eu@ac.ca                                          ',' Responsable bureau d’études                   ','0744623140','Fontaine                 ','Amandine                 ','0841911115');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('63','sagittis.Nullam.vitae@Class.org                   ',' Responsable d’entrepôt                        ','0685850424','Vasseur                  ','Thibault                 ','0374549279');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('64','ut.odio.vel@turpisvitae.edu                       ',' Directeur supply chain                           ','0615326489','Noel                     ','Lisa                     ','0328705782');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('65','nisi.sem.semper@atiaculisquis.com                 ',' Responsable ressources humaines                  ','0728092745','Picard                   ','Lauriane                 ','0180596985');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('66','Duis@Crassedleo.org                               ',' Responsable méthodes                            ','0619480530','Philippe                 ','Lana                     ','0528996347');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('67','magna.a.neque@Curabituregestas.co.uk              ',' Responsable hygiène sécurité environnement    ','0721841686','Petit                    ','Constant                 ','0325076217');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('68','egestas@enimnec.co.uk                             ',' Responsable marketing                            ','0720451427','Muller                   ','Léonard                 ','0558099150');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('69','tempor.diam@necligulaconsectetuer.edu             ','Chargé de communication                          ','0629266336','Daniel                   ','Timothée                ','0823906987');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('70','Cras@miDuisrisus.org                              ',' Responsable qualité                             ','0748404212','Remy                     ','Thomas                   ','0837992867');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('71','eget.mollis.lectus@sedconsequat.co.uk             ',' Ingénieur qualité                              ','0785804495','Leveque                  ','Katell                   ','0422250374');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('72','vitae.sodales@iaculis.org                         ',' Chef de projet informatique                      ','0608611241','Bourgeois                ','Anna                     ','0311356017');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('73','feugiat.nec@nisiMauris.net                        ',' Directeur marketing                              ','0652218575','Mathieu                  ','Alexia                   ','0526698845');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('74','auctor@vestibulumnequesed.com                     ',' Responsable du service entretien et maintenance  ','0632759089','Prevost                  ','Clément                 ','0260997874');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('75','eros@malesuadaaugue.co.uk                         ',' Responsable hygiène sécurité environnement    ','0676600765','Jacob                    ','Antonin                  ','0255701594');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('76','Cum.sociis.natoque@dolornonummyac.edu             ',' Acheteur                                         ','0718305389','Brunet                   ','Marwane                  ','0167541500');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('77','ornare@parturientmontes.org                       ',' Responsable qualité                             ','0767696926','Royer                    ','Anaïs                   ','0308149863');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('78','tincidunt.aliquam.arcu@per.net                    ',' Directeur commercial                             ','0799137402','Fontaine                 ','Juliette                 ','0343967598');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('79','ac.arcu.Nunc@viverraMaecenasiaculis.edu           ',' Technicien de maintenance                        ','0695969194','Schneider                ','Clémence                ','0481260056');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('80','penatibus.et@interdumenimnon.edu                  ',' Ingénieur méthodes                             ','0650137667','Bonnet                   ','Mathilde                 ','0389015720');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('81','nec.diam@diamSed.co.uk                            ',' Responsable administration du personnel et paie  ','0625986810','Roux                     ','Macéo                   ','0889381197');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('82','libero.dui@nulla.co.uk                            ',' Technicien de maintenance                        ','0672467061','Faure                    ','Guillaume                ','0501386544');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('83','tempor.augue.ac@sociosquadlitora.org              ',' Directeur marketing                              ','0707979546','Bertrand                 ','Pierre                   ','0487517878');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('84','vitae.posuere.at@ametanteVivamus.co.uk            ',' Responsable méthodes                            ','0657016882','Jean                     ','Lana                     ','0864540689');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('85','dui.augue@vulputateullamcorpermagna.com           ',' Directeur supply chain                           ','0754058131','Blanchard                ','Loane                    ','0412647148');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('86','orci@ligulaconsectetuerrhoncus.co.uk              ',' Ingénieur méthodes                             ','0766654403','Picard                   ','Baptiste                 ','0472255971');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('87','Nulla.aliquet.Proin@egetmagnaSuspendisse.net      ',' Directeur général adjoint                      ','0749478292','Louis                    ','Simon                    ','0552311693');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('88','arcu@ametconsectetuer.edu                         ','     Chef de produits                             ','0719657121','David                    ','Lena                     ','0807842730');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('89','Aenean.gravida.nunc@nisl.edu                      ',' Directeur général adjoint                      ','0619366707','Le goff                  ','Colin                    ','0542595629');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('90','at@non.net                                        ',' Directeur supply chain                           ','0729299381','Morel                    ','Lou                      ','0171890259');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('91','tincidunt@eutemporerat.edu                        ',' Responsable expéditions                         ','0634382362','Jacquet                  ','Lutécia                 ','0110969432');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('92','Aenean.euismod.mauris@tortordictumeu.org          ',' Responsable qualité                             ','0652330236','Millet                   ','Julia                    ','0548902903');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('93','ornare.elit@noncursusnon.ca                       ','     Chef de produits                             ','0620088198','Leclerc                  ','Kyllian                  ','0309364010');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('94','ac@massaQuisque.com                               ',' Responsable de magasin                           ','0738721988','Rousseau                 ','Océane                  ','0108739454');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('95','mus@odioNam.com                                   ',' Directeur commercial                             ','0671968994','Brunet                   ','Solene                   ','0586984757');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('96','et@egestashendrerit.org                           ',' Ingénieur méthodes                             ','0692071980','Noel                     ','Félix                   ','0463988639');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('97','ipsum@nuncinterdum.com                            ',' Assistant achats                                 ','0653431925','Blanc                    ','Roméo                   ','0836720648');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('98','consectetuer@Nulla.org                            ',' Responsable hygiène sécurité environnement    ','0607860770','Gautier                  ','Mathis                   ','0825473308');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('99','penatibus.et.magnis@pretium.ca                    ',' Responsable transports                           ','0765909915','Renaud                   ','Alexandre                ','0392412886');
Insert into RENAUD.CONTACT (CONTACT_ID,CONTACT_EMAIL,CONTACT_FONCTION,CONTACT_MOBILE,CONTACT_NOM,CONTACT_PRENOM,CONTACT_TEL) values ('100','at@tortordictumeu.org                             ',' Responsable recherche                            ','0641173535','Noel                     ','Rose                     ','0208853448');
REM INSERTING into RENAUD.DOCUMENT
SET DEFINE OFF;
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('1','28',to_date('10/01/11','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing                                                 ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.                     ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('2','10',to_date('19/04/13','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer             ','Lorem ipsum dolor sit amet, consectetuer                                                            ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('6','41',to_date('09/08/11','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam     ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur                                 ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('7','53',to_date('27/08/13','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur                                 ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer             ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('13','15',to_date('20/02/11','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.                                           ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur                                 ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('14','51',to_date('14/03/14','DD/MM/RR'),'Lorem ipsum dolor sit amet,                                                                         ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam     ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('16','2',to_date('16/04/14','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer                                                            ','Lorem ipsum dolor sit amet, consectetuer adipiscing                                                 ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('23','43',to_date('08/09/12','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed                             ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur                                 ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('26','45',to_date('10/12/15','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed                             ','Lorem ipsum dolor sit amet, consectetuer                                                            ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('36','40',to_date('29/05/13','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.                     ','Lorem ipsum dolor sit amet, consectetuer adipiscing                                                 ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('37','46',to_date('18/02/14','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer                                                            ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.                     ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('40','20',to_date('21/03/12','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.                                           ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed                             ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('42','81',to_date('05/07/15','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer             ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur                                 ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('43','73',to_date('19/04/13','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam     ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.                     ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('45','63',to_date('14/05/15','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.                     ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.                     ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('47','51',to_date('02/05/16','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing                                                 ','Lorem ipsum dolor sit amet, consectetuer                                                            ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('48','98',to_date('29/06/15','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam     ','Lorem ipsum dolor sit amet,                                                                         ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('49','60',to_date('16/02/12','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing                                                 ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam     ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('50','6',to_date('10/05/12','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer                                                            ','Lorem ipsum dolor sit amet, consectetuer                                                            ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('55','86',to_date('30/05/14','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.                     ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur                                 ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('59','18',to_date('28/08/12','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer                                                            ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.                                           ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('60','68',to_date('15/01/15','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.                                           ','Lorem ipsum dolor sit amet,                                                                         ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('63','30',to_date('06/06/15','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur                                 ','Lorem ipsum dolor sit amet, consectetuer                                                            ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('65','74',to_date('13/01/12','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer                                                            ','Lorem ipsum dolor sit amet,                                                                         ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('72','80',to_date('31/05/13','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam     ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam     ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('74','9',to_date('16/04/15','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing                                                 ','Lorem ipsum dolor sit amet, consectetuer                                                            ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('76','33',to_date('31/07/15','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer                                                            ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer             ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('78','15',to_date('09/12/12','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer             ','Lorem ipsum dolor sit amet, consectetuer                                                            ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('79','81',to_date('25/01/14','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.                                           ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.                     ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('81','64',to_date('25/06/13','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.                     ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.                                           ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('83','43',to_date('27/01/12','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.                                           ','Lorem ipsum dolor sit amet, consectetuer                                                            ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('85','48',to_date('27/07/14','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer                                                            ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.                                           ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('88','22',to_date('28/04/14','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed                             ','Lorem ipsum dolor sit amet,                                                                         ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('89','98',to_date('28/10/13','DD/MM/RR'),'Lorem ipsum dolor sit amet,                                                                         ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.                                           ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('96','87',to_date('07/08/11','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam     ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur                                 ');
Insert into RENAUD.DOCUMENT (DOCUMENT_ID,COLLA_ID,DOCUMENT_DATE_DIFFUSION,DOCUMENT_RESUME,DOCUMENT_TITRE) values ('100','54',to_date('26/03/13','DD/MM/RR'),'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur                                 ','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer             ');
REM INSERTING into RENAUD.ETAPE
SET DEFINE OFF;
Insert into RENAUD.ETAPE (ETAPE_ID,ETAPEPROJ_ID,PROJET_ID,ETAPE_CHARGE_ESTIMEE,ETAPE_CHARGE_PROD,ETAPE_CHARGEVALID) values ('160101','2','1601','40','30','40');
Insert into RENAUD.ETAPE (ETAPE_ID,ETAPEPROJ_ID,PROJET_ID,ETAPE_CHARGE_ESTIMEE,ETAPE_CHARGE_PROD,ETAPE_CHARGEVALID) values ('160201','1','1602','70','10','50');
Insert into RENAUD.ETAPE (ETAPE_ID,ETAPEPROJ_ID,PROJET_ID,ETAPE_CHARGE_ESTIMEE,ETAPE_CHARGE_PROD,ETAPE_CHARGEVALID) values ('160202','4','1602','150','80','50');
Insert into RENAUD.ETAPE (ETAPE_ID,ETAPEPROJ_ID,PROJET_ID,ETAPE_CHARGE_ESTIMEE,ETAPE_CHARGE_PROD,ETAPE_CHARGEVALID) values ('160301','2','1603','200','30','40');
Insert into RENAUD.ETAPE (ETAPE_ID,ETAPEPROJ_ID,PROJET_ID,ETAPE_CHARGE_ESTIMEE,ETAPE_CHARGE_PROD,ETAPE_CHARGEVALID) values ('160401','2','1604','90','30','40');
Insert into RENAUD.ETAPE (ETAPE_ID,ETAPEPROJ_ID,PROJET_ID,ETAPE_CHARGE_ESTIMEE,ETAPE_CHARGE_PROD,ETAPE_CHARGEVALID) values ('160501','2','1605','80','30','40');
REM INSERTING into RENAUD.ETAPE_PROJET
SET DEFINE OFF;
Insert into RENAUD.ETAPE_PROJET (ETAPEPROJ_ID,ETAPEPROJ_LIBELLE) values ('1','Analyse des besoins                               ');
Insert into RENAUD.ETAPE_PROJET (ETAPEPROJ_ID,ETAPEPROJ_LIBELLE) values ('2','Conception                                        ');
Insert into RENAUD.ETAPE_PROJET (ETAPEPROJ_ID,ETAPEPROJ_LIBELLE) values ('3','Programmation                                     ');
Insert into RENAUD.ETAPE_PROJET (ETAPEPROJ_ID,ETAPEPROJ_LIBELLE) values ('4','Tests unitaires                                   ');
Insert into RENAUD.ETAPE_PROJET (ETAPEPROJ_ID,ETAPEPROJ_LIBELLE) values ('5','Tests d’intégration                            ');
Insert into RENAUD.ETAPE_PROJET (ETAPEPROJ_ID,ETAPEPROJ_LIBELLE) values ('6','Tests de recette et installation                  ');
Insert into RENAUD.ETAPE_PROJET (ETAPEPROJ_ID,ETAPEPROJ_LIBELLE) values ('7','Management du projet                              ');
Insert into RENAUD.ETAPE_PROJET (ETAPEPROJ_ID,ETAPEPROJ_LIBELLE) values ('8','Gestion de configuration                          ');
Insert into RENAUD.ETAPE_PROJET (ETAPEPROJ_ID,ETAPEPROJ_LIBELLE) values ('9','Formation spécifique au projet                   ');
Insert into RENAUD.ETAPE_PROJET (ETAPEPROJ_ID,ETAPEPROJ_LIBELLE) values ('10','Divers                                            ');
REM INSERTING into RENAUD.FONCTION
SET DEFINE OFF;
Insert into RENAUD.FONCTION (FONCTION_ID,FONCTION_LIBELLE) values ('1','Directeur général                               ');
Insert into RENAUD.FONCTION (FONCTION_ID,FONCTION_LIBELLE) values ('2','Responsable des ressources humaines               ');
Insert into RENAUD.FONCTION (FONCTION_ID,FONCTION_LIBELLE) values ('3','Responsable Commercial                            ');
Insert into RENAUD.FONCTION (FONCTION_ID,FONCTION_LIBELLE) values ('4','Secrétaire administratif                         ');
Insert into RENAUD.FONCTION (FONCTION_ID,FONCTION_LIBELLE) values ('5','Responsable du département études               ');
Insert into RENAUD.FONCTION (FONCTION_ID,FONCTION_LIBELLE) values ('6','Chef de Projet                                    ');
Insert into RENAUD.FONCTION (FONCTION_ID,FONCTION_LIBELLE) values ('7','Analyste                                          ');
Insert into RENAUD.FONCTION (FONCTION_ID,FONCTION_LIBELLE) values ('8','Développeur                                      ');
Insert into RENAUD.FONCTION (FONCTION_ID,FONCTION_LIBELLE) values ('9','Secrétaire technique                             ');
Insert into RENAUD.FONCTION (FONCTION_ID,FONCTION_LIBELLE) values ('10','Technicien support                                ');
Insert into RENAUD.FONCTION (FONCTION_ID,FONCTION_LIBELLE) values ('11','Commercial                                        ');
REM INSERTING into RENAUD.GERE
SET DEFINE OFF;
Insert into RENAUD.GERE (CONTACT_ID,CLIENT_ID,PROJET_ID) values ('1','1','1602');
Insert into RENAUD.GERE (CONTACT_ID,CLIENT_ID,PROJET_ID) values ('4','1','1601');
Insert into RENAUD.GERE (CONTACT_ID,CLIENT_ID,PROJET_ID) values ('12','11','1604');
Insert into RENAUD.GERE (CONTACT_ID,CLIENT_ID,PROJET_ID) values ('52','22','1603');
Insert into RENAUD.GERE (CONTACT_ID,CLIENT_ID,PROJET_ID) values ('74','40','1605');
REM INSERTING into RENAUD.INCLUT
SET DEFINE OFF;
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','1');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','2');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','6');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','23');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','42');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','43');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','50');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','55');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','81');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','88');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','89');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1601','100');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1602','7');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1602','96');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1603','48');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1603','72');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1604','40');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1604','83');
Insert into RENAUD.INCLUT (PROJET_ID,DOCUMENT_ID) values ('1605','36');
REM INSERTING into RENAUD.INTERVENTION
SET DEFINE OFF;
Insert into RENAUD.INTERVENTION (INTERVENTION_ID,COLLA_ID,FONCTION_ID,ETAPE_ID,INTERVENTION_DATE_DEBUT,INTERVENTION_DATE_FIN,INTERVENTION_DUREE) values ('1','18','4','160101',to_date('21/07/16','DD/MM/RR'),to_date('25/07/16','DD/MM/RR'),'25');
Insert into RENAUD.INTERVENTION (INTERVENTION_ID,COLLA_ID,FONCTION_ID,ETAPE_ID,INTERVENTION_DATE_DEBUT,INTERVENTION_DATE_FIN,INTERVENTION_DUREE) values ('2','35','5','160201',to_date('15/07/16','DD/MM/RR'),to_date('18/07/16','DD/MM/RR'),'15');
Insert into RENAUD.INTERVENTION (INTERVENTION_ID,COLLA_ID,FONCTION_ID,ETAPE_ID,INTERVENTION_DATE_DEBUT,INTERVENTION_DATE_FIN,INTERVENTION_DUREE) values ('3','44','6','160301',to_date('03/07/16','DD/MM/RR'),to_date('05/07/16','DD/MM/RR'),'16');
Insert into RENAUD.INTERVENTION (INTERVENTION_ID,COLLA_ID,FONCTION_ID,ETAPE_ID,INTERVENTION_DATE_DEBUT,INTERVENTION_DATE_FIN,INTERVENTION_DUREE) values ('4','29','3','160401',to_date('21/06/16','DD/MM/RR'),to_date('05/07/16','DD/MM/RR'),'13');
Insert into RENAUD.INTERVENTION (INTERVENTION_ID,COLLA_ID,FONCTION_ID,ETAPE_ID,INTERVENTION_DATE_DEBUT,INTERVENTION_DATE_FIN,INTERVENTION_DUREE) values ('5','13','2','160202',to_date('15/07/16','DD/MM/RR'),to_date('19/07/16','DD/MM/RR'),'10');
Insert into RENAUD.INTERVENTION (INTERVENTION_ID,COLLA_ID,FONCTION_ID,ETAPE_ID,INTERVENTION_DATE_DEBUT,INTERVENTION_DATE_FIN,INTERVENTION_DUREE) values ('6','51','4','160202',to_date('20/07/16','DD/MM/RR'),to_date('21/07/16','DD/MM/RR'),'5');
REM INSERTING into RENAUD.NATURE_CLIENT
SET DEFINE OFF;
Insert into RENAUD.NATURE_CLIENT (NATURE_ID,NATURE_LIBELLE) values ('1','principale                                        ');
Insert into RENAUD.NATURE_CLIENT (NATURE_ID,NATURE_LIBELLE) values ('2','secondaire                                        ');
Insert into RENAUD.NATURE_CLIENT (NATURE_ID,NATURE_LIBELLE) values ('3','ancienne                                          ');
REM INSERTING into RENAUD.PROJET
SET DEFINE OFF;
Insert into RENAUD.PROJET (PROJET_ID,TYPEPROJ_ID,COLLA_ID,ACTIVITE_ID,PROJET_CHARGE_GLOBALE_ESTIMEE,PROJET_CHARGE_REELE,PROJET_COLLA_MAX,PROJET_COMMSPECIFIQUE,PROJET_CYCLE_VIE,PROJET_DATE_PREVUE_DEBUT,PROJET_DATE_PREVUE_FIN,PROJET_DATE_REELLE_DEBUT,PROJET_DATE_REELLE_FIN,PROJET_ESTIMATION,PROJET_INFOS_TECH,PROJET_LIBELLE_COURT,PROJET_LIBELLE_LONG,PROJET_TAILLE) values ('1601','1','1','8','110',null,'6','Création d''une application de suivi de projet                                                      ','Création ',to_date('28/08/16','DD/MM/RR'),to_date('15/04/17','DD/MM/RR'),null,null,'Aucune estimation                                                                                   ',null,'SdP       ','Application de suivi de projet                    ',null);
Insert into RENAUD.PROJET (PROJET_ID,TYPEPROJ_ID,COLLA_ID,ACTIVITE_ID,PROJET_CHARGE_GLOBALE_ESTIMEE,PROJET_CHARGE_REELE,PROJET_COLLA_MAX,PROJET_COMMSPECIFIQUE,PROJET_CYCLE_VIE,PROJET_DATE_PREVUE_DEBUT,PROJET_DATE_PREVUE_FIN,PROJET_DATE_REELLE_DEBUT,PROJET_DATE_REELLE_FIN,PROJET_ESTIMATION,PROJET_INFOS_TECH,PROJET_LIBELLE_COURT,PROJET_LIBELLE_LONG,PROJET_TAILLE) values ('1602','1','45','3','60',null,'9','Création d''une application de gestion de frette                                                    ','Dév      ',to_date('28/09/16','DD/MM/RR'),to_date('01/01/17','DD/MM/RR'),null,null,'Aucune estimation                                                                                   ',null,'GdF       ','Application de gestion de frette                  ',null);
Insert into RENAUD.PROJET (PROJET_ID,TYPEPROJ_ID,COLLA_ID,ACTIVITE_ID,PROJET_CHARGE_GLOBALE_ESTIMEE,PROJET_CHARGE_REELE,PROJET_COLLA_MAX,PROJET_COMMSPECIFIQUE,PROJET_CYCLE_VIE,PROJET_DATE_PREVUE_DEBUT,PROJET_DATE_PREVUE_FIN,PROJET_DATE_REELLE_DEBUT,PROJET_DATE_REELLE_FIN,PROJET_ESTIMATION,PROJET_INFOS_TECH,PROJET_LIBELLE_COURT,PROJET_LIBELLE_LONG,PROJET_TAILLE) values ('1603','2','22','1','159',null,'3','Création d''un site de vente de fruits et légumes                                                  ','Création ',to_date('16/10/16','DD/MM/RR'),to_date('27/02/17','DD/MM/RR'),null,null,'Aucune estimation                                                                                   ',null,'FL        ','site Fruits Légumes                              ',null);
Insert into RENAUD.PROJET (PROJET_ID,TYPEPROJ_ID,COLLA_ID,ACTIVITE_ID,PROJET_CHARGE_GLOBALE_ESTIMEE,PROJET_CHARGE_REELE,PROJET_COLLA_MAX,PROJET_COMMSPECIFIQUE,PROJET_CYCLE_VIE,PROJET_DATE_PREVUE_DEBUT,PROJET_DATE_PREVUE_FIN,PROJET_DATE_REELLE_DEBUT,PROJET_DATE_REELLE_FIN,PROJET_ESTIMATION,PROJET_INFOS_TECH,PROJET_LIBELLE_COURT,PROJET_LIBELLE_LONG,PROJET_TAILLE) values ('1604','3','41','2','88',null,'2','Création d''un logiciel de capture d''écran                                                         ','Maint     ',to_date('28/12/16','DD/MM/RR'),to_date('22/03/17','DD/MM/RR'),null,null,'Aucune estimation                                                                                   ',null,'IE        ','Capture d''écran ImpEc                            ',null);
Insert into RENAUD.PROJET (PROJET_ID,TYPEPROJ_ID,COLLA_ID,ACTIVITE_ID,PROJET_CHARGE_GLOBALE_ESTIMEE,PROJET_CHARGE_REELE,PROJET_COLLA_MAX,PROJET_COMMSPECIFIQUE,PROJET_CYCLE_VIE,PROJET_DATE_PREVUE_DEBUT,PROJET_DATE_PREVUE_FIN,PROJET_DATE_REELLE_DEBUT,PROJET_DATE_REELLE_FIN,PROJET_ESTIMATION,PROJET_INFOS_TECH,PROJET_LIBELLE_COURT,PROJET_LIBELLE_LONG,PROJET_TAILLE) values ('1605','1','9','7','300',null,'22','Création d''un site de paris                                                                        ','Création ',to_date('31/12/16','DD/MM/RR'),to_date('10/04/17','DD/MM/RR'),null,null,'Aucune estimation                                                                                   ',null,'Paris     ','Site de paris                                     ',null);
REM INSERTING into RENAUD.SALAIRE
SET DEFINE OFF;
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('1','1','4234',to_date('13/06/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('2','2','2252',to_date('11/08/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('3','3','2734',to_date('07/03/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('4','4','1204',to_date('23/10/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('5','5','1669',to_date('06/03/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('6','6','4452',to_date('09/11/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('7','7','3553',to_date('25/04/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('8','8','2326',to_date('16/12/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('9','9','2525',to_date('15/12/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('10','10','3513',to_date('13/06/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('11','11','3009',to_date('08/06/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('12','12','4385',to_date('12/10/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('13','13','4575',to_date('09/12/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('14','14','2639',to_date('06/03/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('15','15','4941',to_date('06/09/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('16','16','4713',to_date('18/01/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('17','17','3127',to_date('27/05/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('18','18','2367',to_date('04/04/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('19','19','2868',to_date('21/06/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('20','20','4037',to_date('26/03/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('21','21','2931',to_date('10/08/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('22','22','4582',to_date('06/03/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('23','23','1899',to_date('06/02/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('24','24','2068',to_date('03/02/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('25','25','1212',to_date('07/12/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('26','26','2167',to_date('30/04/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('27','27','1247',to_date('12/04/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('28','28','2312',to_date('21/03/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('29','29','4122',to_date('28/09/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('30','30','3966',to_date('12/12/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('31','31','3242',to_date('24/01/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('32','32','3845',to_date('21/09/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('33','33','3049',to_date('29/01/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('34','34','2599',to_date('09/02/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('35','35','4933',to_date('14/12/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('36','36','2959',to_date('09/06/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('37','37','1732',to_date('22/06/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('39','39','2258',to_date('24/04/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('40','40','3790',to_date('01/09/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('41','41','1808',to_date('09/05/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('42','42','2258',to_date('01/10/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('43','43','4459',to_date('23/01/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('44','44','3927',to_date('09/09/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('45','45','3931',to_date('31/08/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('46','46','4873',to_date('12/04/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('47','47','1726',to_date('03/12/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('48','48','2083',to_date('16/01/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('49','49','1674',to_date('25/02/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('50','50','2560',to_date('15/07/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('51','51','3947',to_date('24/12/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('52','52','3187',to_date('14/07/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('53','53','2800',to_date('11/12/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('54','54','3696',to_date('08/07/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('55','55','1231',to_date('17/03/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('56','56','4663',to_date('23/01/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('57','57','2975',to_date('31/03/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('58','58','3360',to_date('25/03/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('59','59','2877',to_date('08/11/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('60','60','4531',to_date('01/07/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('61','61','3010',to_date('28/01/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('62','62','1757',to_date('17/05/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('63','63','4409',to_date('02/11/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('64','64','3822',to_date('30/06/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('65','65','2961',to_date('29/12/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('66','66','1955',to_date('08/07/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('67','67','1187',to_date('27/01/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('68','68','3910',to_date('19/02/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('69','69','1420',to_date('14/12/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('71','71','3380',to_date('15/05/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('72','72','1311',to_date('11/07/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('73','73','1485',to_date('19/09/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('74','74','2940',to_date('28/05/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('75','75','3185',to_date('10/11/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('76','76','4970',to_date('18/05/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('77','77','1895',to_date('26/02/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('78','78','2381',to_date('10/09/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('79','79','1206',to_date('29/12/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('80','80','1833',to_date('04/05/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('81','81','2585',to_date('14/07/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('82','82','2385',to_date('12/03/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('83','83','2909',to_date('19/09/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('84','84','4831',to_date('01/02/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('85','85','1314',to_date('21/03/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('86','86','3977',to_date('06/08/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('87','87','3508',to_date('25/04/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('88','88','4464',to_date('22/11/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('89','89','2934',to_date('16/04/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('90','90','2942',to_date('13/08/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('91','91','2142',to_date('30/06/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('92','92','1163',to_date('20/04/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('93','93','1044',to_date('24/12/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('94','94','2651',to_date('01/06/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('95','95','1939',to_date('24/10/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('96','96','1313',to_date('05/12/15','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('97','97','3516',to_date('08/02/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('98','98','2861',to_date('22/05/17','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('99','99','1302',to_date('05/03/16','DD/MM/RR'));
Insert into RENAUD.SALAIRE (SALAIRE_ID,COLLA_ID,SALAIRE_MONTANT,SALAIRE_DATE) values ('100','100','2753',to_date('05/01/16','DD/MM/RR'));
REM INSERTING into RENAUD.TECHNOLOGIE
SET DEFINE OFF;
Insert into RENAUD.TECHNOLOGIE (TECHNOLOGIE_ID,TYPETECHNO_ID,TECHNOLOGIE_LIBELLE) values ('1','1','Java                                              ');
Insert into RENAUD.TECHNOLOGIE (TECHNOLOGIE_ID,TYPETECHNO_ID,TECHNOLOGIE_LIBELLE) values ('2','1','C#                                                ');
Insert into RENAUD.TECHNOLOGIE (TECHNOLOGIE_ID,TYPETECHNO_ID,TECHNOLOGIE_LIBELLE) values ('3','1','PHP                                               ');
Insert into RENAUD.TECHNOLOGIE (TECHNOLOGIE_ID,TYPETECHNO_ID,TECHNOLOGIE_LIBELLE) values ('4','1','Java EE                                           ');
Insert into RENAUD.TECHNOLOGIE (TECHNOLOGIE_ID,TYPETECHNO_ID,TECHNOLOGIE_LIBELLE) values ('5','2','Oracle                                            ');
Insert into RENAUD.TECHNOLOGIE (TECHNOLOGIE_ID,TYPETECHNO_ID,TECHNOLOGIE_LIBELLE) values ('6','2','mySQL                                             ');
Insert into RENAUD.TECHNOLOGIE (TECHNOLOGIE_ID,TYPETECHNO_ID,TECHNOLOGIE_LIBELLE) values ('7','3','Ubuntu 16.04                                      ');
Insert into RENAUD.TECHNOLOGIE (TECHNOLOGIE_ID,TYPETECHNO_ID,TECHNOLOGIE_LIBELLE) values ('8','3','Windows 10                                        ');
REM INSERTING into RENAUD.TYPE_PROJET
SET DEFINE OFF;
Insert into RENAUD.TYPE_PROJET (TYPEPROJ_ID,TYPEPROJ_LIBELLE) values ('1','forfait             ');
Insert into RENAUD.TYPE_PROJET (TYPEPROJ_ID,TYPEPROJ_LIBELLE) values ('2','régie              ');
Insert into RENAUD.TYPE_PROJET (TYPEPROJ_ID,TYPEPROJ_LIBELLE) values ('3','assistance          ');
REM INSERTING into RENAUD.TYPE_TECHNO
SET DEFINE OFF;
Insert into RENAUD.TYPE_TECHNO (TYPETECHNO_ID,TYPETECHNO_LIBELLE) values ('1','Langage                                           ');
Insert into RENAUD.TYPE_TECHNO (TYPETECHNO_ID,TYPETECHNO_LIBELLE) values ('2','Base de donnée                                   ');
Insert into RENAUD.TYPE_TECHNO (TYPETECHNO_ID,TYPETECHNO_LIBELLE) values ('3','Plateformes                                       ');
REM INSERTING into RENAUD.UTILISE
SET DEFINE OFF;
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('1','1601');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('1','1603');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('1','1604');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('2','1602');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('2','1603');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('3','1602');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('3','1605');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('4','1602');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('4','1603');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('4','1605');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('5','1601');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('6','1604');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('7','1604');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('7','1605');
Insert into RENAUD.UTILISE (TECHNOLOGIE_ID,PROJET_ID) values ('8','1601');
--------------------------------------------------------
--  DDL for Index PK_TYPE_TECHNO
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_TYPE_TECHNO" ON "RENAUD"."TYPE_TECHNO" ("TYPETECHNO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_CONTACT
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_CONTACT" ON "RENAUD"."CONTACT" ("CONTACT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_INTERVENTION
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_INTERVENTION" ON "RENAUD"."INTERVENTION" ("INTERVENTION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_TYPE_PROJET
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_TYPE_PROJET" ON "RENAUD"."TYPE_PROJET" ("TYPEPROJ_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index CONCERNE2_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."CONCERNE2_FK" ON "RENAUD"."INTERVENTION" ("ETAPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index EXERCE_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."EXERCE_FK" ON "RENAUD"."CLIENT" ("ACTIVITE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index EST_DE3_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."EST_DE3_FK" ON "RENAUD"."TECHNOLOGIE" ("TYPETECHNO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_COLLABORATEUR
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_COLLABORATEUR" ON "RENAUD"."COLLABORATEUR" ("COLLA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index REALISE_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."REALISE_FK" ON "RENAUD"."INTERVENTION" ("COLLA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index GAGNE_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."GAGNE_FK" ON "RENAUD"."SALAIRE" ("COLLA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_GERE
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_GERE" ON "RENAUD"."GERE" ("CONTACT_ID", "CLIENT_ID", "PROJET_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_CLIENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_CLIENT" ON "RENAUD"."CLIENT" ("CLIENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index EST_DE_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."EST_DE_FK" ON "RENAUD"."CLIENT" ("NATURE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_FONCTION
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_FONCTION" ON "RENAUD"."FONCTION" ("FONCTION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index CONCERNE_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."CONCERNE_FK" ON "RENAUD"."PROJET" ("ACTIVITE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index ACCUEUILLE_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."ACCUEUILLE_FK" ON "RENAUD"."COLLABORATEUR" ("COL_COLLA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index REDIGE_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."REDIGE_FK" ON "RENAUD"."DOCUMENT" ("COLLA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_PROJET
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_PROJET" ON "RENAUD"."PROJET" ("PROJET_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_ETAPE_PROJET
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_ETAPE_PROJET" ON "RENAUD"."ETAPE_PROJET" ("ETAPEPROJ_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index RELEVE_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."RELEVE_FK" ON "RENAUD"."INTERVENTION" ("FONCTION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index EST_DE2_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."EST_DE2_FK" ON "RENAUD"."PROJET" ("TYPEPROJ_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_ACTIVITE
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_ACTIVITE" ON "RENAUD"."ACTIVITE" ("ACTIVITE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index APPARTIENT_A_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."APPARTIENT_A_FK" ON "RENAUD"."ETAPE" ("ETAPEPROJ_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_NATURE_CLIENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_NATURE_CLIENT" ON "RENAUD"."NATURE_CLIENT" ("NATURE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_DOCUMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_DOCUMENT" ON "RENAUD"."DOCUMENT" ("DOCUMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_INCLUT
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_INCLUT" ON "RENAUD"."INCLUT" ("PROJET_ID", "DOCUMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_UTILISE
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_UTILISE" ON "RENAUD"."UTILISE" ("TECHNOLOGIE_ID", "PROJET_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_TECHNOLOGIE
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_TECHNOLOGIE" ON "RENAUD"."TECHNOLOGIE" ("TECHNOLOGIE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index CONTIENT_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."CONTIENT_FK" ON "RENAUD"."ETAPE" ("PROJET_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_ETAPE
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_ETAPE" ON "RENAUD"."ETAPE" ("ETAPE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index PK_SALAIRE
--------------------------------------------------------

  CREATE UNIQUE INDEX "RENAUD"."PK_SALAIRE" ON "RENAUD"."SALAIRE" ("SALAIRE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index DIRIGE_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."DIRIGE_FK" ON "RENAUD"."PROJET" ("COLLA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  DDL for Index ASSUME_FK
--------------------------------------------------------

  CREATE INDEX "RENAUD"."ASSUME_FK" ON "RENAUD"."COLLABORATEUR" ("FONCTION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE" ;
--------------------------------------------------------
--  Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "RENAUD"."CLIENT" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CLIENT" MODIFY ("NATURE_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CLIENT" MODIFY ("ACTIVITE_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CLIENT" MODIFY ("CLIENT_ADRESSE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CLIENT" MODIFY ("CLIENT_CA" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CLIENT" MODIFY ("CLIENT_RAISON_SOCIALE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CLIENT" MODIFY ("CLIENT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CLIENT" ADD CONSTRAINT "PK_CLIENT" PRIMARY KEY ("CLIENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FONCTION
--------------------------------------------------------

  ALTER TABLE "RENAUD"."FONCTION" MODIFY ("FONCTION_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."FONCTION" MODIFY ("FONCTION_LIBELLE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."FONCTION" ADD CONSTRAINT "PK_FONCTION" PRIMARY KEY ("FONCTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INTERVENTION
--------------------------------------------------------

  ALTER TABLE "RENAUD"."INTERVENTION" MODIFY ("INTERVENTION_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."INTERVENTION" MODIFY ("COLLA_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."INTERVENTION" MODIFY ("FONCTION_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."INTERVENTION" MODIFY ("ETAPE_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."INTERVENTION" MODIFY ("INTERVENTION_DATE_DEBUT" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."INTERVENTION" ADD CONSTRAINT "PK_INTERVENTION" PRIMARY KEY ("INTERVENTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CONTACT
--------------------------------------------------------

  ALTER TABLE "RENAUD"."CONTACT" MODIFY ("CONTACT_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CONTACT" MODIFY ("CONTACT_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CONTACT" MODIFY ("CONTACT_FONCTION" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CONTACT" MODIFY ("CONTACT_NOM" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CONTACT" MODIFY ("CONTACT_PRENOM" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CONTACT" MODIFY ("CONTACT_TEL" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."CONTACT" ADD CONSTRAINT "PK_CONTACT" PRIMARY KEY ("CONTACT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GERE
--------------------------------------------------------

  ALTER TABLE "RENAUD"."GERE" MODIFY ("CONTACT_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."GERE" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."GERE" MODIFY ("PROJET_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."GERE" ADD CONSTRAINT "PK_GERE" PRIMARY KEY ("CONTACT_ID", "CLIENT_ID", "PROJET_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOCUMENT
--------------------------------------------------------

  ALTER TABLE "RENAUD"."DOCUMENT" MODIFY ("DOCUMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."DOCUMENT" MODIFY ("COLLA_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."DOCUMENT" MODIFY ("DOCUMENT_DATE_DIFFUSION" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."DOCUMENT" MODIFY ("DOCUMENT_RESUME" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."DOCUMENT" MODIFY ("DOCUMENT_TITRE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."DOCUMENT" ADD CONSTRAINT "PK_DOCUMENT" PRIMARY KEY ("DOCUMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TYPE_TECHNO
--------------------------------------------------------

  ALTER TABLE "RENAUD"."TYPE_TECHNO" MODIFY ("TYPETECHNO_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."TYPE_TECHNO" MODIFY ("TYPETECHNO_LIBELLE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."TYPE_TECHNO" ADD CONSTRAINT "PK_TYPE_TECHNO" PRIMARY KEY ("TYPETECHNO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COLLABORATEUR
--------------------------------------------------------

  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("COLLA_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("FONCTION_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("COLLA_ADRESSE1" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("COLLA_CP" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("COLLA_DATE_EMBAUCHE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("COLLA_NOM" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("COLLA_PRENOM" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("COLLA_SEXE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("COLLA_STATUT" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("COLLA_TEL" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("COLLA_TITRE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" MODIFY ("COLLA_VILLE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."COLLABORATEUR" ADD CONSTRAINT "PK_COLLABORATEUR" PRIMARY KEY ("COLLA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ETAPE
--------------------------------------------------------

  ALTER TABLE "RENAUD"."ETAPE" MODIFY ("ETAPE_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."ETAPE" MODIFY ("ETAPEPROJ_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."ETAPE" MODIFY ("PROJET_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."ETAPE" MODIFY ("ETAPE_CHARGE_ESTIMEE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."ETAPE" ADD CONSTRAINT "PK_ETAPE" PRIMARY KEY ("ETAPE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UTILISE
--------------------------------------------------------

  ALTER TABLE "RENAUD"."UTILISE" MODIFY ("TECHNOLOGIE_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."UTILISE" MODIFY ("PROJET_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."UTILISE" ADD CONSTRAINT "PK_UTILISE" PRIMARY KEY ("TECHNOLOGIE_ID", "PROJET_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TYPE_PROJET
--------------------------------------------------------

  ALTER TABLE "RENAUD"."TYPE_PROJET" MODIFY ("TYPEPROJ_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."TYPE_PROJET" MODIFY ("TYPEPROJ_LIBELLE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."TYPE_PROJET" ADD CONSTRAINT "PK_TYPE_PROJET" PRIMARY KEY ("TYPEPROJ_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROJET
--------------------------------------------------------

  ALTER TABLE "RENAUD"."PROJET" MODIFY ("PROJET_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."PROJET" MODIFY ("TYPEPROJ_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."PROJET" MODIFY ("COLLA_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."PROJET" MODIFY ("ACTIVITE_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."PROJET" MODIFY ("PROJET_CHARGE_GLOBALE_ESTIMEE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."PROJET" MODIFY ("PROJET_DATE_PREVUE_DEBUT" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."PROJET" MODIFY ("PROJET_DATE_PREVUE_FIN" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."PROJET" MODIFY ("PROJET_ESTIMATION" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."PROJET" MODIFY ("PROJET_LIBELLE_COURT" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."PROJET" MODIFY ("PROJET_LIBELLE_LONG" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."PROJET" ADD CONSTRAINT "PK_PROJET" PRIMARY KEY ("PROJET_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NATURE_CLIENT
--------------------------------------------------------

  ALTER TABLE "RENAUD"."NATURE_CLIENT" MODIFY ("NATURE_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."NATURE_CLIENT" MODIFY ("NATURE_LIBELLE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."NATURE_CLIENT" ADD CONSTRAINT "PK_NATURE_CLIENT" PRIMARY KEY ("NATURE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ACTIVITE
--------------------------------------------------------

  ALTER TABLE "RENAUD"."ACTIVITE" MODIFY ("ACTIVITE_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."ACTIVITE" MODIFY ("ACTIVITE_LIBELLE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."ACTIVITE" ADD CONSTRAINT "PK_ACTIVITE" PRIMARY KEY ("ACTIVITE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SALAIRE
--------------------------------------------------------

  ALTER TABLE "RENAUD"."SALAIRE" MODIFY ("SALAIRE_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."SALAIRE" MODIFY ("COLLA_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."SALAIRE" MODIFY ("SALAIRE_MONTANT" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."SALAIRE" MODIFY ("SALAIRE_DATE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."SALAIRE" ADD CONSTRAINT "PK_SALAIRE" PRIMARY KEY ("SALAIRE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INCLUT
--------------------------------------------------------

  ALTER TABLE "RENAUD"."INCLUT" MODIFY ("PROJET_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."INCLUT" MODIFY ("DOCUMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."INCLUT" ADD CONSTRAINT "PK_INCLUT" PRIMARY KEY ("PROJET_ID", "DOCUMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ETAPE_PROJET
--------------------------------------------------------

  ALTER TABLE "RENAUD"."ETAPE_PROJET" MODIFY ("ETAPEPROJ_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."ETAPE_PROJET" MODIFY ("ETAPEPROJ_LIBELLE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."ETAPE_PROJET" ADD CONSTRAINT "PK_ETAPE_PROJET" PRIMARY KEY ("ETAPEPROJ_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TECHNOLOGIE
--------------------------------------------------------

  ALTER TABLE "RENAUD"."TECHNOLOGIE" MODIFY ("TECHNOLOGIE_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."TECHNOLOGIE" MODIFY ("TYPETECHNO_ID" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."TECHNOLOGIE" MODIFY ("TECHNOLOGIE_LIBELLE" NOT NULL ENABLE);
  ALTER TABLE "RENAUD"."TECHNOLOGIE" ADD CONSTRAINT "PK_TECHNOLOGIE" PRIMARY KEY ("TECHNOLOGIE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "FIL_ROUGE"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "RENAUD"."CLIENT" ADD CONSTRAINT "FK_CLIENT_EST_DE_NATURE_C" FOREIGN KEY ("NATURE_ID")
	  REFERENCES "RENAUD"."NATURE_CLIENT" ("NATURE_ID") ENABLE;
  ALTER TABLE "RENAUD"."CLIENT" ADD CONSTRAINT "FK_CLIENT_EXERCE_ACTIVITE" FOREIGN KEY ("ACTIVITE_ID")
	  REFERENCES "RENAUD"."ACTIVITE" ("ACTIVITE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COLLABORATEUR
--------------------------------------------------------

  ALTER TABLE "RENAUD"."COLLABORATEUR" ADD CONSTRAINT "FK_COLLABOR_ACCUEUILL_COLLABOR" FOREIGN KEY ("COL_COLLA_ID")
	  REFERENCES "RENAUD"."COLLABORATEUR" ("COLLA_ID") ENABLE;
  ALTER TABLE "RENAUD"."COLLABORATEUR" ADD CONSTRAINT "FK_COLLABOR_ASSUME_FONCTION" FOREIGN KEY ("FONCTION_ID")
	  REFERENCES "RENAUD"."FONCTION" ("FONCTION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DOCUMENT
--------------------------------------------------------

  ALTER TABLE "RENAUD"."DOCUMENT" ADD CONSTRAINT "FK_DOCUMENT_REDIGE_COLLABOR" FOREIGN KEY ("COLLA_ID")
	  REFERENCES "RENAUD"."COLLABORATEUR" ("COLLA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ETAPE
--------------------------------------------------------

  ALTER TABLE "RENAUD"."ETAPE" ADD CONSTRAINT "FK_ETAPE_APPARTIEN_ETAPE_PR" FOREIGN KEY ("ETAPEPROJ_ID")
	  REFERENCES "RENAUD"."ETAPE_PROJET" ("ETAPEPROJ_ID") ENABLE;
  ALTER TABLE "RENAUD"."ETAPE" ADD CONSTRAINT "FK_ETAPE_CONTIENT_PROJET" FOREIGN KEY ("PROJET_ID")
	  REFERENCES "RENAUD"."PROJET" ("PROJET_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GERE
--------------------------------------------------------

  ALTER TABLE "RENAUD"."GERE" ADD CONSTRAINT "FK_GERE_GERE2_CLIENT" FOREIGN KEY ("CLIENT_ID")
	  REFERENCES "RENAUD"."CLIENT" ("CLIENT_ID") ENABLE;
  ALTER TABLE "RENAUD"."GERE" ADD CONSTRAINT "FK_GERE_GERE3_PROJET" FOREIGN KEY ("PROJET_ID")
	  REFERENCES "RENAUD"."PROJET" ("PROJET_ID") ENABLE;
  ALTER TABLE "RENAUD"."GERE" ADD CONSTRAINT "FK_GERE_GERE_CONTACT" FOREIGN KEY ("CONTACT_ID")
	  REFERENCES "RENAUD"."CONTACT" ("CONTACT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INCLUT
--------------------------------------------------------

  ALTER TABLE "RENAUD"."INCLUT" ADD CONSTRAINT "FK_INCLUT_INCLUT2_DOCUMENT" FOREIGN KEY ("DOCUMENT_ID")
	  REFERENCES "RENAUD"."DOCUMENT" ("DOCUMENT_ID") ENABLE;
  ALTER TABLE "RENAUD"."INCLUT" ADD CONSTRAINT "FK_INCLUT_INCLUT_PROJET" FOREIGN KEY ("PROJET_ID")
	  REFERENCES "RENAUD"."PROJET" ("PROJET_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INTERVENTION
--------------------------------------------------------

  ALTER TABLE "RENAUD"."INTERVENTION" ADD CONSTRAINT "FK_INTERVEN_CONCERNE2_ETAPE" FOREIGN KEY ("ETAPE_ID")
	  REFERENCES "RENAUD"."ETAPE" ("ETAPE_ID") ENABLE;
  ALTER TABLE "RENAUD"."INTERVENTION" ADD CONSTRAINT "FK_INTERVEN_REALISE_COLLABOR" FOREIGN KEY ("COLLA_ID")
	  REFERENCES "RENAUD"."COLLABORATEUR" ("COLLA_ID") ENABLE;
  ALTER TABLE "RENAUD"."INTERVENTION" ADD CONSTRAINT "FK_INTERVEN_RELEVE_FONCTION" FOREIGN KEY ("FONCTION_ID")
	  REFERENCES "RENAUD"."FONCTION" ("FONCTION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROJET
--------------------------------------------------------

  ALTER TABLE "RENAUD"."PROJET" ADD CONSTRAINT "FK_PROJET_CONCERNE_ACTIVITE" FOREIGN KEY ("ACTIVITE_ID")
	  REFERENCES "RENAUD"."ACTIVITE" ("ACTIVITE_ID") ENABLE;
  ALTER TABLE "RENAUD"."PROJET" ADD CONSTRAINT "FK_PROJET_DIRIGE_COLLABOR" FOREIGN KEY ("COLLA_ID")
	  REFERENCES "RENAUD"."COLLABORATEUR" ("COLLA_ID") ENABLE;
  ALTER TABLE "RENAUD"."PROJET" ADD CONSTRAINT "FK_PROJET_EST_DE2_TYPE_PRO" FOREIGN KEY ("TYPEPROJ_ID")
	  REFERENCES "RENAUD"."TYPE_PROJET" ("TYPEPROJ_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALAIRE
--------------------------------------------------------

  ALTER TABLE "RENAUD"."SALAIRE" ADD CONSTRAINT "FK_SALAIRE_GAGNE_COLLABOR" FOREIGN KEY ("COLLA_ID")
	  REFERENCES "RENAUD"."COLLABORATEUR" ("COLLA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TECHNOLOGIE
--------------------------------------------------------

  ALTER TABLE "RENAUD"."TECHNOLOGIE" ADD CONSTRAINT "FK_TECHNOLO_EST_DE3_TYPE_TEC" FOREIGN KEY ("TYPETECHNO_ID")
	  REFERENCES "RENAUD"."TYPE_TECHNO" ("TYPETECHNO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UTILISE
--------------------------------------------------------

  ALTER TABLE "RENAUD"."UTILISE" ADD CONSTRAINT "FK_UTILISE_UTILISE2_PROJET" FOREIGN KEY ("PROJET_ID")
	  REFERENCES "RENAUD"."PROJET" ("PROJET_ID") ENABLE;
  ALTER TABLE "RENAUD"."UTILISE" ADD CONSTRAINT "FK_UTILISE_UTILISE_TECHNOLO" FOREIGN KEY ("TECHNOLOGIE_ID")
	  REFERENCES "RENAUD"."TECHNOLOGIE" ("TECHNOLOGIE_ID") ENABLE;
