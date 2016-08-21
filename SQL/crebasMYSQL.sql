
/*==============================================================*/
/* Table : ACTIVITE                                             */
/*==============================================================*/
create table ACTIVITE 
(
   ACTIVITE_ID          int               not null AUTO_INCREMENT,
   ACTIVITE_LIBELLE     CHAR(50)             not null,
   constraint PK_ACTIVITE primary key (ACTIVITE_ID)
);

/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT 
(
   CLIENT_ID            int(4)            not null AUTO_INCREMENT,
   NATURE_ID            int               not null,
   ACTIVITE_ID          int               not null,
   CLIENT_ADRESSE       CHAR(100)            not null,
   CLIENT_CA            int               not null,
   CLIENT_COMMGENERAUX  CHAR(100),
   CLIENT_EFFECTIF      int,
   CLIENT_MAIL          CHAR(50),
   CLIENT_RAISON_SOCIALE CHAR(100)            not null,
   CLIENT_TEL           CHAR(10),
   CLIENT_TYPE          CHAR(1)              not null,
   constraint PK_CLIENT primary key (CLIENT_ID),
   constraint CHK_CA_CLIENT CHECK(CLIENT_CA < (1000000*CLIENT_EFFECTIF))
);




/*==============================================================*/
/* Table : COLLABORATEUR                                        */
/*==============================================================*/
create table COLLABORATEUR 
(
   COLLA_ID             int(4)            not null AUTO_INCREMENT,
   COL_COLLA_ID         int(4),
   FONCTION_ID          int               not null,
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
   constraint CHK_TITRE_COLLAB CHECK((COLLA_TITRE like ('MME', 'MLE') AND COLLA_SEXE like 'F') OR (COLLA_TITRE like 'MR' AND COLLA_SEXE like 'M')),
   constraint CHK_DATE_EMBAUCHE_COLLAB CHECK(COLLA_DATE_EMBAUCHE < COLLA_DATE_FIN_CONTRAT)
);




/*==============================================================*/
/* Table : CONTACT                                              */
/*==============================================================*/
create table CONTACT 
(
   CONTACT_ID           int               not null AUTO_INCREMENT,
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
   DOCUMENT_ID          int               not null AUTO_INCREMENT,
   COLLA_ID             int(4)            not null,
   DOCUMENT_DATE_DIFFUSION DATE                 not null,
   DOCUMENT_RESUME      CHAR(100)            not null,
   DOCUMENT_TITRE       CHAR(100)            not null,
   constraint PK_DOCUMENT primary key (DOCUMENT_ID)
);



/*==============================================================*/
/* Table : ETAPE                                                */
/*==============================================================*/
create table ETAPE 
(
   ETAPE_ID             int(6)            not null,
   ETAPEPROJ_ID         int               not null,
   PROJET_ID            int(4)            not null,
   ETAPE_CHARGE_ESTIMEE INTEGER              not null,
   ETAPE_CHARGE_PROD    INTEGER,
   ETAPE_CHARGEVALID    INTEGER,
   constraint PK_ETAPE primary key (ETAPE_ID)
);



/*==============================================================*/
/* Table : ETAPE_PROJET                                         */
/*==============================================================*/
create table ETAPE_PROJET 
(
   ETAPEPROJ_ID         int               not null AUTO_INCREMENT,
   ETAPEPROJ_LIBELLE    CHAR(50)             not null,
   constraint PK_ETAPE_PROJET primary key (ETAPEPROJ_ID)
);

/*==============================================================*/
/* Table : FONCTION                                             */
/*==============================================================*/
create table FONCTION 
(
   FONCTION_ID          int               not null AUTO_INCREMENT,
   FONCTION_LIBELLE     CHAR(50)             not null,
   constraint PK_FONCTION primary key (FONCTION_ID)
);

/*==============================================================*/
/* Table : GERE                                                 */
/*==============================================================*/
create table GERE 
(
   CONTACT_ID           int               not null,
   CLIENT_ID            int(4)            not null,
   PROJET_ID            int(4)            not null,
   constraint PK_GERE primary key (CONTACT_ID, CLIENT_ID, PROJET_ID)
);

/*==============================================================*/
/* Table : INCLUT                                               */
/*==============================================================*/
create table INCLUT 
(
   PROJET_ID            int(4)            not null,
   DOCUMENT_ID          int               not null,
   constraint PK_INCLUT primary key (PROJET_ID, DOCUMENT_ID)
);

/*==============================================================*/
/* Table : INTERVENTION                                         */
/*==============================================================*/
create table INTERVENTION 
(
   INTERVENTION_ID      int               not null AUTO_INCREMENT,
   COLLA_ID             int(4)            not null,
   FONCTION_ID          int               not null,
   ETAPE_ID             int(6)            not null,
   INTERVENTION_DATE_DEBUT DATE                 not null,
   INTERVENTION_DATE_FIN DATE,
   INTERVENTION_DUREE   INTEGER,
   constraint PK_INTERVENTION primary key (INTERVENTION_ID),
   constraint CHK_DATE_INTERV CHECK(INTERVENTION_DATE_DEBUT < INTERVENTION_DATE_FIN)
);




/*==============================================================*/
/* Table : NATURE_CLIENT                                        */
/*==============================================================*/
create table NATURE_CLIENT 
(
   NATURE_ID            int               not null AUTO_INCREMENT,
   NATURE_LIBELLE       CHAR(50)             not null,
   constraint PK_NATURE_CLIENT primary key (NATURE_ID)
);

/*==============================================================*/
/* Table : PROJET                                               */
/*==============================================================*/
create table PROJET 
(
   PROJET_ID            int(4)            not null ,
   TYPEPROJ_ID          INTEGER              not null,
   COLLA_ID             int(4)            not null,
   ACTIVITE_ID          int               not null,
   PROJET_CHARGE_GLOBALE_ESTIMEE int               not null,
   PROJET_CHARGE_REELE  int,
   PROJET_COLLA_MAX     int,
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
   PROJET_TAILLE        int,
   constraint PK_PROJET primary key (PROJET_ID),
   constraint CHK_DATE_PREVUE_PROJ CHECK(PROJET_DATE_PREVUE_DEBUT < PROJET_DATE_PREVUE_FIN),
   constraint CHK_DATE_REELLE_PROJ CHECK(PROJET_DATE_REELLE_DEBUT < PROJET_DATE_REELLE_FIN)
);






/*==============================================================*/
/* Table : SALAIRE                                              */
/*==============================================================*/
create table SALAIRE 
(
   SALAIRE_ID           int               not null AUTO_INCREMENT,
   COLLA_ID             int(4)            not null,
   SALAIRE_MONTANT      int               not null,
   SALAIRE_DATE         DATE                 not null,
   constraint PK_SALAIRE primary key (SALAIRE_ID)
);



/*==============================================================*/
/* Table : TECHNOLOGIE                                          */
/*==============================================================*/
create table TECHNOLOGIE 
(
   TECHNOLOGIE_ID       int               not null AUTO_INCREMENT,
   TYPETECHNO_ID        int               not null,
   TECHNOLOGIE_LIBELLE  CHAR(50)             not null,
   constraint PK_TECHNOLOGIE primary key (TECHNOLOGIE_ID)
);



/*==============================================================*/
/* Table : TYPE_PROJET                                          */
/*==============================================================*/
create table TYPE_PROJET 
(
   TYPEPROJ_ID          INTEGER              not null AUTO_INCREMENT,
   TYPEPROJ_LIBELLE     CHAR(20)             not null,
   constraint PK_TYPE_PROJET primary key (TYPEPROJ_ID)
);

/*==============================================================*/
/* Table : TYPE_TECHNO                                          */
/*==============================================================*/
create table TYPE_TECHNO 
(
   TYPETECHNO_ID        int               not null AUTO_INCREMENT,
   TYPETECHNO_LIBELLE   CHAR(50)             not null,
   constraint PK_TYPE_TECHNO primary key (TYPETECHNO_ID)
);

/*==============================================================*/
/* Table : UTILISE                                              */
/*==============================================================*/
create table UTILISE 
(
   TECHNOLOGIE_ID       int               not null,
   PROJET_ID            int(4)            not null,
   constraint PK_UTILISE primary key (TECHNOLOGIE_ID, PROJET_ID)
);


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
