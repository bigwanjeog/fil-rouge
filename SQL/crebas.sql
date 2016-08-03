/*==============================================================*/
/* Nom de SGBD :  ORACLE Version 11g                            */
/* Date de création :  22/07/2016 11:09:54                      */
/*==============================================================*/


/*
alter table CLIENT
   drop constraint FK_CLIENT_EST_DE_NATURE_C;

alter table CLIENT
   drop constraint FK_CLIENT_EXERCE_ACTIVITE;

alter table COLLABORATEUR
   drop constraint FK_COLLABOR_ACCUEUILL_COLLABOR;

alter table COLLABORATEUR
   drop constraint FK_COLLABOR_ASSUME_FONCTION;

alter table DOCUMENT
   drop constraint FK_DOCUMENT_REDIGE_COLLABOR;

alter table ETAPE
   drop constraint FK_ETAPE_APPARTIEN_ETAPE_PR;

alter table ETAPE
   drop constraint FK_ETAPE_CONTIENT_PROJET;

alter table GERE
   drop constraint FK_GERE_GERE_CONTACT;

alter table GERE
   drop constraint FK_GERE_GERE2_CLIENT;

alter table GERE
   drop constraint FK_GERE_GERE3_PROJET;

alter table INCLUT
   drop constraint FK_INCLUT_INCLUT_PROJET;

alter table INCLUT
   drop constraint FK_INCLUT_INCLUT2_DOCUMENT;

alter table INTERVENTION
   drop constraint FK_INTERVEN_CONCERNE2_ETAPE;

alter table INTERVENTION
   drop constraint FK_INTERVEN_REALISE_COLLABOR;

alter table INTERVENTION
   drop constraint FK_INTERVEN_RELEVE_FONCTION;

alter table PROJET
   drop constraint FK_PROJET_CONCERNE_ACTIVITE;

alter table PROJET
   drop constraint FK_PROJET_DIRIGE_COLLABOR;

alter table PROJET
   drop constraint FK_PROJET_EST_DE2_TYPE_PRO;

alter table SALAIRE
   drop constraint FK_SALAIRE_GAGNE_COLLABOR;

alter table TECHNOLOGIE
   drop constraint FK_TECHNOLO_EST_DE3_TYPE_TEC;

alter table UTILISE
   drop constraint FK_UTILISE_UTILISE_TECHNOLO;

alter table UTILISE
   drop constraint FK_UTILISE_UTILISE2_PROJET;

drop table ACTIVITE cascade constraints;

drop index EST_DE_FK;

drop index EXERCE_FK;

drop table CLIENT cascade constraints;

drop index ACCUEUILLE_FK;

drop index ASSUME_FK;

drop table COLLABORATEUR cascade constraints;

drop table CONTACT cascade constraints;

drop index REDIGE_FK;

drop table DOCUMENT cascade constraints;

drop index APPARTIENT_A_FK;

drop index CONTIENT_FK;

drop table ETAPE cascade constraints;

drop table ETAPE_PROJET cascade constraints;

drop table FONCTION cascade constraints;

drop table GERE cascade constraints;

drop table INCLUT cascade constraints;

drop index RELEVE_FK;

drop index REALISE_FK;

drop index CONCERNE2_FK;

drop table INTERVENTION cascade constraints;

drop table NATURE_CLIENT cascade constraints;

drop index DIRIGE_FK;

drop index EST_DE2_FK;

drop index CONCERNE_FK;

drop table PROJET cascade constraints;

drop index GAGNE_FK;

drop table SALAIRE cascade constraints;

drop index EST_DE3_FK;

drop table TECHNOLOGIE cascade constraints;

drop table TYPE_PROJET cascade constraints;

drop table TYPE_TECHNO cascade constraints;

drop table UTILISE cascade constraints;
*/

/*==============================================================*/
/* Table : ACTIVITE                                             */
/*==============================================================*/
create table ACTIVITE 
(
   ACTIVITE_ID          NUMBER               not null,
   ACTIVITE_LIBELLE     CHAR(50)             not null,
   constraint PK_ACTIVITE primary key (ACTIVITE_ID)
);

/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT 
(
   CLIENT_ID            NUMBER(4)            not null,
   NATURE_ID            NUMBER               not null,
   ACTIVITE_ID          NUMBER               not null,
   CLIENT_ADRESSE       CHAR(100)            not null,
   CLIENT_CA            NUMBER               not null,
   CLIENT_COMMGENERAUX  CHAR(100),
   CLIENT_EFFECTIF      NUMBER,
   CLIENT_MAIL          CHAR(50),
   CLIENT_RAISON_SOCIALE CHAR(100)            not null,
   CLIENT_TEL           CHAR(10),
   CLIENT_TYPE          CHAR(1)              not null,
   constraint PK_CLIENT primary key (CLIENT_ID),
   constraint CHK_CA_CLIENT CHECK(CLIENT_CA < (1000000*CLIENT_EFFECTIF))
);


/*==============================================================*/
/* Index : EXERCE_FK                                            */
/*==============================================================*/
create index EXERCE_FK on CLIENT (
   ACTIVITE_ID ASC
);

/*==============================================================*/
/* Index : EST_DE_FK                                            */
/*==============================================================*/
create index EST_DE_FK on CLIENT (
   NATURE_ID ASC
);

/*==============================================================*/
/* Table : COLLABORATEUR                                        */
/*==============================================================*/
create table COLLABORATEUR 
(
   COLLA_ID             NUMBER(4)            not null,
   COL_COLLA_ID         NUMBER(4),
   FONCTION_ID          NUMBER               not null,
   COLLA_ADRESSE1       CHAR(100)             not null,
   COLLA_ADRESSE2       CHAR(100),
   COLLA_CP             CHAR(5)              not null,
   COLLA_DATE_EMBAUCHE  DATE                 not null,
   COLLA_DATE_FIN_CONTRAT DATE,
   COLLA_MAIL           CHAR(50),
   COLLA_MOBILE         CHAR(10),
   COLLA_NOM            CHAR(20)             not null,
   COLLA_PRENOM         CHAR(20)             not null,
   COLLA_SEXE           CHAR(1)              not null,
   COLLA_STATUT         CHAR(3)              not null,
   COLLA_TEL            CHAR(10)             not null,
   COLLA_TITRE          CHAR(3)              not null,
   COLLA_VILLE          CHAR(20)             not null,
   constraint PK_COLLABORATEUR primary key (COLLA_ID),
   constraint CHK_TITRE_COLLAB CHECK((COLLA_TITRE IN ('MME', 'MLE') AND COLLA_SEXE IN 'F') OR (COLLA_TITRE IN 'MR' AND COLLA_SEXE IN 'M')),
   constraint CHK_DATE_EMBAUCHE_COLLAB CHECK(COLLA_DATE_EMBAUCHE < COLLA_DATE_FIN_CONTRAT)
);

-- INSERT INTO COLLABORATEUR VALUES (1,1,1,'merguez','merguez','44444','18/06/1940','21/07/1969','merguez@merguez.merguez','0000000000','merguez','merguez','F','STA','0000000000','MLE','merguez');

/*==============================================================*/
/* Index : ASSUME_FK                                            */
/*==============================================================*/
create index ASSUME_FK on COLLABORATEUR (
   FONCTION_ID ASC
);

/*==============================================================*/
/* Index : ACCUEUILLE_FK                                        */
/*==============================================================*/
create index ACCUEUILLE_FK on COLLABORATEUR (
   COL_COLLA_ID ASC
);

/*==============================================================*/
/* Table : CONTACT                                              */
/*==============================================================*/
create table CONTACT 
(
   CONTACT_ID           NUMBER               not null,
   CONTACT_EMAIL        CHAR(50)             not null,
   CONTACT_FONCTION     CHAR(50)             not null,
   CONTACT_MOBILE       CHAR(10),
   CONTACT_NOM          CHAR(25)             not null,
   CONTACT_PRENOM       CHAR(25)             not null,
   CONTACT_TEL          CHAR(10)             not null,
   constraint PK_CONTACT primary key (CONTACT_ID)
);

/*==============================================================*/
/* Table : DOCUMENT                                             */
/*==============================================================*/
create table DOCUMENT 
(
   DOCUMENT_ID          NUMBER               not null,
   COLLA_ID             NUMBER(4)            not null,
   DOCUMENT_DATE_DIFFUSION DATE                 not null,
   DOCUMENT_RESUME      CHAR(100)            not null,
   DOCUMENT_TITRE       CHAR(100)            not null,
   constraint PK_DOCUMENT primary key (DOCUMENT_ID)
);

/*==============================================================*/
/* Index : REDIGE_FK                                            */
/*==============================================================*/
create index REDIGE_FK on DOCUMENT (
   COLLA_ID ASC
);

/*==============================================================*/
/* Table : ETAPE                                                */
/*==============================================================*/
create table ETAPE 
(
   ETAPE_ID             NUMBER(6)            not null,
   ETAPEPROJ_ID         NUMBER               not null,
   PROJET_ID            NUMBER(4)            not null,
   ETAPE_CHARGE_ESTIMEE INTEGER              not null,
   ETAPE_CHARGE_PROD    INTEGER,
   ETAPE_CHARGEVALID    INTEGER,
   constraint PK_ETAPE primary key (ETAPE_ID)
);

/*==============================================================*/
/* Index : CONTIENT_FK                                          */
/*==============================================================*/
create index CONTIENT_FK on ETAPE (
   PROJET_ID ASC
);

/*==============================================================*/
/* Index : APPARTIENT_A_FK                                      */
/*==============================================================*/
create index APPARTIENT_A_FK on ETAPE (
   ETAPEPROJ_ID ASC
);

/*==============================================================*/
/* Table : ETAPE_PROJET                                         */
/*==============================================================*/
create table ETAPE_PROJET 
(
   ETAPEPROJ_ID         NUMBER               not null,
   ETAPEPROJ_LIBELLE    CHAR(50)             not null,
   constraint PK_ETAPE_PROJET primary key (ETAPEPROJ_ID)
);

/*==============================================================*/
/* Table : FONCTION                                             */
/*==============================================================*/
create table FONCTION 
(
   FONCTION_ID          NUMBER               not null,
   FONCTION_LIBELLE     CHAR(50)             not null,
   constraint PK_FONCTION primary key (FONCTION_ID)
);

/*==============================================================*/
/* Table : GERE                                                 */
/*==============================================================*/
create table GERE 
(
   CONTACT_ID           NUMBER               not null,
   CLIENT_ID            NUMBER(4)            not null,
   PROJET_ID            NUMBER(4)            not null,
   constraint PK_GERE primary key (CONTACT_ID, CLIENT_ID, PROJET_ID)
);

/*==============================================================*/
/* Table : INCLUT                                               */
/*==============================================================*/
create table INCLUT 
(
   PROJET_ID            NUMBER(4)            not null,
   DOCUMENT_ID          NUMBER               not null,
   constraint PK_INCLUT primary key (PROJET_ID, DOCUMENT_ID)
);

/*==============================================================*/
/* Table : INTERVENTION                                         */
/*==============================================================*/
create table INTERVENTION 
(
   INTERVENTION_ID      NUMBER               not null,
   COLLA_ID             NUMBER(4)            not null,
   FONCTION_ID          NUMBER               not null,
   ETAPE_ID             NUMBER(6)            not null,
   INTERVENTION_DATE_DEBUT DATE                 not null,
   INTERVENTION_DATE_FIN DATE,
   INTERVENTION_DUREE   INTEGER,
   constraint PK_INTERVENTION primary key (INTERVENTION_ID),
   constraint CHK_DATE_INTERV CHECK(INTERVENTION_DATE_DEBUT < INTERVENTION_DATE_FIN)
);

/*==============================================================*/
/* Index : CONCERNE2_FK                                         */
/*==============================================================*/
create index CONCERNE2_FK on INTERVENTION (
   ETAPE_ID ASC
);

/*==============================================================*/
/* Index : REALISE_FK                                           */
/*==============================================================*/
create index REALISE_FK on INTERVENTION (
   COLLA_ID ASC
);

/*==============================================================*/
/* Index : RELEVE_FK                                            */
/*==============================================================*/
create index RELEVE_FK on INTERVENTION (
   FONCTION_ID ASC
);

/*==============================================================*/
/* Table : NATURE_CLIENT                                        */
/*==============================================================*/
create table NATURE_CLIENT 
(
   NATURE_ID            NUMBER               not null,
   NATURE_LIBELLE       CHAR(50)             not null,
   constraint PK_NATURE_CLIENT primary key (NATURE_ID)
);

/*==============================================================*/
/* Table : PROJET                                               */
/*==============================================================*/
create table PROJET 
(
   PROJET_ID            NUMBER(4)            not null,
   TYPEPROJ_ID          INTEGER              not null,
   COLLA_ID             NUMBER(4)            not null,
   ACTIVITE_ID          NUMBER               not null,
   PROJET_CHARGE_GLOBALE_ESTIMEE NUMBER               not null,
   PROJET_CHARGE_REELE  NUMBER,
   PROJET_COLLA_MAX     NUMBER,
   PROJET_COMMSPECIFIQUE CHAR(100),
   PROJET_CYCLE_VIE     CHAR(50),
   PROJET_DATE_PREVUE_DEBUT DATE                 not null,
   PROJET_DATE_PREVUE_FIN DATE                 not null,
   PROJET_DATE_REELLE_DEBUT DATE,
   PROJET_DATE_REELLE_FIN DATE,
   PROJET_ESTIMATION    CHAR(100)            not null,
   PROJET_INFOS_TECH    CHAR(100),
   PROJET_LIBELLE_COURT CHAR(10)             not null,
   PROJET_LIBELLE_LONG  CHAR(50)             not null,
   PROJET_TAILLE        NUMBER,
   constraint PK_PROJET primary key (PROJET_ID),
   constraint CHK_DATE_PREVUE_PROJ CHECK(PROJET_DATE_PREVUE_DEBUT < PROJET_DATE_PREVUE_FIN),
   constraint CHK_DATE_REELLE_PROJ CHECK(PROJET_DATE_REELLE_DEBUT < PROJET_DATE_REELLE_FIN)
);

/*==============================================================*/
/* Index : CONCERNE_FK                                          */
/*==============================================================*/
create index CONCERNE_FK on PROJET (
   ACTIVITE_ID ASC
);

/*==============================================================*/
/* Index : EST_DE2_FK                                           */
/*==============================================================*/
create index EST_DE2_FK on PROJET (
   TYPEPROJ_ID ASC
);

/*==============================================================*/
/* Index : DIRIGE_FK                                            */
/*==============================================================*/
create index DIRIGE_FK on PROJET (
   COLLA_ID ASC
);

/*==============================================================*/
/* Table : SALAIRE                                              */
/*==============================================================*/
create table SALAIRE 
(
   SALAIRE_ID           NUMBER               not null,
   COLLA_ID             NUMBER(4)            not null,
   SALAIRE_MONTANT      NUMBER               not null,
   SALAIRE_DATE         DATE                 not null,
   constraint PK_SALAIRE primary key (SALAIRE_ID)
);

/*==============================================================*/
/* Index : GAGNE_FK                                             */
/*==============================================================*/
create index GAGNE_FK on SALAIRE (
   COLLA_ID ASC
);

/*==============================================================*/
/* Table : TECHNOLOGIE                                          */
/*==============================================================*/
create table TECHNOLOGIE 
(
   TECHNOLOGIE_ID       NUMBER               not null,
   TYPETECHNO_ID        NUMBER               not null,
   TECHNOLOGIE_LIBELLE  CHAR(50)             not null,
   constraint PK_TECHNOLOGIE primary key (TECHNOLOGIE_ID)
);

/*==============================================================*/
/* Index : EST_DE3_FK                                           */
/*==============================================================*/
create index EST_DE3_FK on TECHNOLOGIE (
   TYPETECHNO_ID ASC
);

/*==============================================================*/
/* Table : TYPE_PROJET                                          */
/*==============================================================*/
create table TYPE_PROJET 
(
   TYPEPROJ_ID          INTEGER              not null,
   TYPEPROJ_LIBELLE     CHAR(20)             not null,
   constraint PK_TYPE_PROJET primary key (TYPEPROJ_ID)
);

/*==============================================================*/
/* Table : TYPE_TECHNO                                          */
/*==============================================================*/
create table TYPE_TECHNO 
(
   TYPETECHNO_ID        NUMBER               not null,
   TYPETECHNO_LIBELLE   CHAR(50)             not null,
   constraint PK_TYPE_TECHNO primary key (TYPETECHNO_ID)
);

/*==============================================================*/
/* Table : UTILISE                                              */
/*==============================================================*/
create table UTILISE 
(
   TECHNOLOGIE_ID       NUMBER               not null,
   PROJET_ID            NUMBER(4)            not null,
   constraint PK_UTILISE primary key (TECHNOLOGIE_ID, PROJET_ID)
);


/* Supprimer les compteurs */

/* Compteurs */
DROP SEQUENCE SEQ_ACTIVITE_ID;
DROP SEQUENCE SEQ_CLIENT_ID;
DROP SEQUENCE SEQ_COLLABORATEUR_ID;
DROP SEQUENCE SEQ_CONTACT_ID;
DROP SEQUENCE SEQ_DOCUMENT_ID;
DROP SEQUENCE SEQ_ETAPE_PROJET_ID;
DROP SEQUENCE SEQ_FONCTION_ID;
DROP SEQUENCE SEQ_INTERVENTION_ID;
DROP SEQUENCE SEQ_NATURE_CLIENT_ID;
DROP SEQUENCE SEQ_SALAIRE_ID;
DROP SEQUENCE SEQ_TECHNOLOGIE_ID;
DROP SEQUENCE SEQ_TYPE_PROJET_ID;
DROP SEQUENCE SEQ_TYPE_TECHNO_ID;
DROP SEQUENCE SEQ_PROJET_ID;
DROP SEQUENCE SEQ_ETAPE_ID;

/* Compteurs */
CREATE SEQUENCE SEQ_ACTIVITE_ID START WITH 1;
CREATE SEQUENCE SEQ_CLIENT_ID START WITH 1;
CREATE SEQUENCE SEQ_COLLABORATEUR_ID START WITH 1;
CREATE SEQUENCE SEQ_CONTACT_ID START WITH 1;
CREATE SEQUENCE SEQ_DOCUMENT_ID START WITH 1;
CREATE SEQUENCE SEQ_ETAPE_PROJET_ID START WITH 1;
CREATE SEQUENCE SEQ_FONCTION_ID START WITH 1;
CREATE SEQUENCE SEQ_INTERVENTION_ID START WITH 1;
CREATE SEQUENCE SEQ_NATURE_CLIENT_ID START WITH 1;
CREATE SEQUENCE SEQ_SALAIRE_ID START WITH 1;
CREATE SEQUENCE SEQ_TECHNOLOGIE_ID START WITH 1;
CREATE SEQUENCE SEQ_TYPE_PROJET_ID START WITH 1;
CREATE SEQUENCE SEQ_TYPE_TECHNO_ID START WITH 1;
CREATE SEQUENCE SEQ_PROJET_ID START WITH 1;
CREATE SEQUENCE SEQ_ETAPE_ID START WITH 1;

/* Procédure pour faciliter le reset des compteurs */

CREATE OR REPLACE PROCEDURE RESET_SEQ AS
BEGIN

EXECUTE IMMEDIATE 'DROP SEQUENCE SEQ_ACTIVITE_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_CLIENT_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_COLLABORATEUR_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_CONTACT_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_DOCUMENT_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_ETAPE_PROJET_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_FONCTION_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_INTERVENTION_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_NATURE_CLIENT_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_SALAIRE_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_TECHNOLOGIE_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_TYPE_PROJET_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_TYPE_TECHNO_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_PROJET_ID';
EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_ETAPE_ID';

EXECUTE IMMEDIATE 'CREATE SEQUENCE SEQ_ACTIVITE_ID START WITH 1';

EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_CLIENT_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_COLLABORATEUR_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_CONTACT_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_DOCUMENT_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_ETAPE_PROJET_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_FONCTION_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_INTERVENTION_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_NATURE_CLIENT_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_SALAIRE_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_TECHNOLOGIE_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_TYPE_PROJET_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_TYPE_TECHNO_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_PROJET_ID START WITH 1';
EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_ETAPE_ID START WITH 1';

END RESET_SEQ;
/


/* Création de la vue pour récupérer les deux derniers chiffres de l'année */

CREATE VIEW V_ANNEE (ANNEE_COURS) AS
select to_number(to_char(sysdate, 'RR')) from dual;


/* Ajout des contraintes */

alter table CLIENT
   add constraint FK_CLIENT_EST_DE_NATURE_C foreign key (NATURE_ID)
      references NATURE_CLIENT (NATURE_ID);

alter table CLIENT
   add constraint FK_CLIENT_EXERCE_ACTIVITE foreign key (ACTIVITE_ID)
      references ACTIVITE (ACTIVITE_ID);

alter table COLLABORATEUR
   add constraint FK_COLLABOR_ACCUEUILL_COLLABOR foreign key (COL_COLLA_ID)
      references COLLABORATEUR (COLLA_ID);

alter table COLLABORATEUR
   add constraint FK_COLLABOR_ASSUME_FONCTION foreign key (FONCTION_ID)
      references FONCTION (FONCTION_ID);

alter table DOCUMENT
   add constraint FK_DOCUMENT_REDIGE_COLLABOR foreign key (COLLA_ID)
      references COLLABORATEUR (COLLA_ID);

alter table ETAPE
   add constraint FK_ETAPE_APPARTIEN_ETAPE_PR foreign key (ETAPEPROJ_ID)
      references ETAPE_PROJET (ETAPEPROJ_ID);

alter table ETAPE
   add constraint FK_ETAPE_CONTIENT_PROJET foreign key (PROJET_ID)
      references PROJET (PROJET_ID);

alter table GERE
   add constraint FK_GERE_GERE_CONTACT foreign key (CONTACT_ID)
      references CONTACT (CONTACT_ID);

alter table GERE
   add constraint FK_GERE_GERE2_CLIENT foreign key (CLIENT_ID)
      references CLIENT (CLIENT_ID);

alter table GERE
   add constraint FK_GERE_GERE3_PROJET foreign key (PROJET_ID)
      references PROJET (PROJET_ID);

alter table INCLUT
   add constraint FK_INCLUT_INCLUT_PROJET foreign key (PROJET_ID)
      references PROJET (PROJET_ID);

alter table INCLUT
   add constraint FK_INCLUT_INCLUT2_DOCUMENT foreign key (DOCUMENT_ID)
      references DOCUMENT (DOCUMENT_ID);

alter table INTERVENTION
   add constraint FK_INTERVEN_CONCERNE2_ETAPE foreign key (ETAPE_ID)
      references ETAPE (ETAPE_ID);

alter table INTERVENTION
   add constraint FK_INTERVEN_REALISE_COLLABOR foreign key (COLLA_ID)
      references COLLABORATEUR (COLLA_ID);

alter table INTERVENTION
   add constraint FK_INTERVEN_RELEVE_FONCTION foreign key (FONCTION_ID)
      references FONCTION (FONCTION_ID);

alter table PROJET
   add constraint FK_PROJET_CONCERNE_ACTIVITE foreign key (ACTIVITE_ID)
      references ACTIVITE (ACTIVITE_ID);

alter table PROJET
   add constraint FK_PROJET_DIRIGE_COLLABOR foreign key (COLLA_ID)
      references COLLABORATEUR (COLLA_ID);

alter table PROJET
   add constraint FK_PROJET_EST_DE2_TYPE_PRO foreign key (TYPEPROJ_ID)
      references TYPE_PROJET (TYPEPROJ_ID);

alter table SALAIRE
   add constraint FK_SALAIRE_GAGNE_COLLABOR foreign key (COLLA_ID)
      references COLLABORATEUR (COLLA_ID);

alter table TECHNOLOGIE
   add constraint FK_TECHNOLO_EST_DE3_TYPE_TEC foreign key (TYPETECHNO_ID)
      references TYPE_TECHNO (TYPETECHNO_ID);

alter table UTILISE
   add constraint FK_UTILISE_UTILISE_TECHNOLO foreign key (TECHNOLOGIE_ID)
      references TECHNOLOGIE (TECHNOLOGIE_ID);

alter table UTILISE
   add constraint FK_UTILISE_UTILISE2_PROJET foreign key (PROJET_ID)
      references PROJET (PROJET_ID);



/* Procédure pour reset le compteur PROJET */
CREATE OR REPLACE PROCEDURE RESET_SEQ_PROJET AS 
BEGIN
  EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_PROJET_ID';
  EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_PROJET_ID START WITH 1';
END RESET_SEQ_PROJET;
/

/* Fonction DATE_ANNEE */
create or replace FUNCTION DATE_ANNEE RETURN NUMBER
IS
annee varchar2(2);
pj_num varchar2(2);
pj_id number(4);
j number;
req varchar2(100);
annee2 varchar(2);
BEGIN
SELECT MAX(PROJET_ID)INTO req FROM PROJET ;


annee2 := SUBSTR(req,1,2);
annee := SUBSTR(EXTRACT(YEAR FROM SYSDATE()),3,2);
IF annee2 != annee
THEN
RESET_SEQ_PROJET;
END IF;

j := SEQ_PROJET_ID.nextval;


IF j <= 9
THEN
pj_num := CONCAT('0',j);
END IF;


pj_id := TO_NUMBER(CONCAT(annee,pj_num)) ;
-- DEBUG
--DBMS_OUTPUT.PUT_LINE(pj_id);
--DBMS_OUTPUT.PUT_LINE(annee2);
  RETURN pj_id;
END DATE_ANNEE;
/

/* Trigger (Ndlr : METTRE UN /) */

create or replace TRIGGER TRIGGER_PROJET_ID 
BEFORE INSERT ON PROJET
REFERENCING NEW AS new_proj_id
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new_proj_id.PROJET_ID IS NULL
    THEN
      :new_proj_id.PROJET_ID := DATE_ANNEE;
    END IF;
  END IF;  
END;
/
create or replace TRIGGER TRIGGER_CLIENT_ID 
BEFORE INSERT ON CLIENT
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.CLIENT_ID IS NULL
    THEN
      :new.CLIENT_ID := SEQ_CLIENT_ID.nextval;
    END IF;
  END IF;  
END;
/
create or replace TRIGGER TRIGGER_ACTIVITE_ID 
BEFORE INSERT ON ACTIVITE
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.ACTIVITE_ID IS NULL
    THEN
      :new.ACTIVITE_ID := SEQ_ACTIVITE_ID.nextval;
    END IF;
  END IF;  
END ;
/
create or replace TRIGGER TRIGGER_COLLABORATEUR_ID 
BEFORE INSERT ON COLLABORATEUR
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.COLLA_ID IS NULL
    THEN
      :new.COLLA_ID := SEQ_COLLABORATEUR_ID.nextval;
    END IF;
  END IF;  
END ;
/
create or replace TRIGGER TRIGGER_CONTACT_ID 
BEFORE INSERT ON CONTACT
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.CONTACT_ID IS NULL
    THEN
      :new.CONTACT_ID := SEQ_CONTACT_ID.nextval;
    END IF;
  END IF;  
END ;
/
create or replace TRIGGER TRIGGER_DOCUMENT_ID 
BEFORE INSERT ON DOCUMENT
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.DOCUMENT_ID IS NULL
    THEN
      :new.DOCUMENT_ID := SEQ_DOCUMENT_ID.nextval;
    END IF;
  END IF;  
END ;
/
create or replace TRIGGER TRIGGER_ETAPE_PROJET_ID 
BEFORE INSERT ON ETAPE_PROJET
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.ETAPEPROJ_ID IS NULL
    THEN
      :new.ETAPEPROJ_ID := SEQ_ETAPE_PROJET_ID.nextval;
    END IF;
  END IF;  
END ;
/
create or replace TRIGGER TRIGGER_FONCTION_ID 
BEFORE INSERT ON FONCTION
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.FONCTION_ID IS NULL
    THEN
      :new.FONCTION_ID := SEQ_FONCTION_ID.nextval;
    END IF;
  END IF;  
END ;
/
create or replace TRIGGER TRIGGER_INTERVENTION_ID 
BEFORE INSERT ON INTERVENTION
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.INTERVENTION_ID IS NULL
    THEN
      :new.INTERVENTION_ID := SEQ_INTERVENTION_ID.nextval;
    END IF;
  END IF;  
END ;
/
create or replace TRIGGER TRIGGER_NATURE_CLIENT_ID 
BEFORE INSERT ON NATURE_CLIENT
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.NATURE_ID IS NULL
    THEN
      :new.NATURE_ID := SEQ_NATURE_CLIENT_ID.nextval;
    END IF;
  END IF;  
END ;
/
create or replace TRIGGER TRIGGER_SALAIRE_ID 
BEFORE INSERT ON SALAIRE
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.SALAIRE_ID IS NULL
    THEN
      :new.SALAIRE_ID := SEQ_SALAIRE_ID.nextval;
    END IF;
  END IF;  
END ;
/
create or replace TRIGGER TRIGGER_TECHNOLOGIE_ID 
BEFORE INSERT ON TECHNOLOGIE
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.TECHNOLOGIE_ID IS NULL
    THEN
      :new.TECHNOLOGIE_ID := SEQ_TECHNOLOGIE_ID.nextval;
    END IF;
  END IF;  
END ;
/
create or replace TRIGGER TRIGGER_TYPE_TECHNO_ID 
BEFORE INSERT ON TYPE_TECHNO
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.TYPETECHNO_ID IS NULL
    THEN
      :new.TYPETECHNO_ID := SEQ_TYPE_TECHNO_ID.nextval;
    END IF;
  END IF;  
END ;
/
create or replace TRIGGER TRIGGER_TYPE_PROJET_ID 
BEFORE INSERT ON TYPE_PROJET
REFERENCING NEW AS new
for each row
BEGIN
  IF INSERTING
  THEN
    IF :new.TYPEPROJ_ID IS NULL
    THEN
      :new.TYPEPROJ_ID := SEQ_TYPE_PROJET_ID.nextval;
    END IF;
  END IF;  
END ;
/

<<<<<<< HEAD
/* Procédure pour reset le compteur PROJET */
CREATE OR REPLACE PROCEDURE RESET_SEQ_PROJET AS 
BEGIN
  EXECUTE IMMEDIATE'DROP SEQUENCE SEQ_PROJET_ID';
  EXECUTE IMMEDIATE'CREATE SEQUENCE SEQ_PROJET_ID START WITH 1';
END RESET_SEQ_PROJET;
/
=======
>>>>>>> origin/master


create or replace TRIGGER TRIGGER_ETAPE_ID 
BEFORE INSERT ON LAPIN.ETAPE
REFERENCING NEW AS NEW
for each row
DECLARE
CODE_PROJET NUMBER(4) := :NEW.PROJET_ID;
--ETAPE_ID NUMBER(6);
BEGIN
  IF INSERTING
  THEN
    IF :NEW.ETAPE_ID IS NULL
    THEN
     --:NEW.ETAPE_ID := TO_NUMBER(CONCAT(TO_CHAR(CODE_PROJET),TO_CHAR(SEQ_ETAPE_ID.nextval,'09')));
     SELECT TO_NUMBER((CONCAT((TO_NUMBER(CODE_PROJET)),(TO_NUMBER(SEQ_ETAPE_ID.nextval,'09')))),'123456') INTO :NEW."ETAPE_ID" FROM DUAL;
    END IF;
  END IF;  
END;
/