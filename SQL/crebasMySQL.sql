/*==============================================================*/
/* Table : ACTIVITE                                             */
/*==============================================================*/
create table ACTIVITE 
(
   ACTIVITE_ID          INT               not null,
   ACTIVITE_LIBELLE     CHAR(50)             not null,
   constraint PK_ACTIVITE primary key (ACTIVITE_ID)
);

/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT 
(
   CLIENT_ID            INT(4)            not null,
   NATURE_ID            INT               not null,
   ACTIVITE_ID          INT               not null,
   CLIENT_ADRESSE       CHAR(100)            not null,
   CLIENT_CA            INT               not null,
   CLIENT_COMMGENERAUX  CHAR(100),
   CLIENT_EFFECTIF      INT,
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
   COLLA_ID             INT(4)            not null,
   COL_COLLA_ID         INT(4),
   FONCTION_ID          INT               not null,
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
   constraint CHK_TITRE_COLLAB CHECK((COLLA_TITRE LIKE ('MME', 'MLE') AND COLLA_SEXE LIKE 'F') OR (COLLA_TITRE LIKE 'MR' AND COLLA_SEXE LIKE 'M')),
   constraint CHK_DATE_EMBAUCHE_COLLAB CHECK(COLLA_DATE_EMBAUCHE < COLLA_DATE_FIN_CONTRAT)




/*==============================================================*/
/* Table : CONTACT                                              */
/*==============================================================*/
create table CONTACT 
(
   CONTACT_ID           INT               not null,
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
   DOCUMENT_ID          INT               not null,
   COLLA_ID             INT(4)            not null,
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
   ETAPE_ID             INT(6)            not null,
   ETAPEPROJ_ID         INT               not null,
   PROJET_ID            INT(4)            not null,
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
   ETAPEPROJ_ID         INT               not null,
   ETAPEPROJ_LIBELLE    CHAR(50)             not null,
   constraint PK_ETAPE_PROJET primary key (ETAPEPROJ_ID)
);

/*==============================================================*/
/* Table : FONCTION                                             */
/*==============================================================*/
create table FONCTION 
(
   FONCTION_ID          INT               not null,
   FONCTION_LIBELLE     CHAR(50)             not null,
   constraint PK_FONCTION primary key (FONCTION_ID)
);

/*==============================================================*/
/* Table : GERE                                                 */
/*==============================================================*/
create table GERE 
(
   CONTACT_ID           INT               not null,
   CLIENT_ID            INT(4)            not null,
   PROJET_ID            INT(4)            not null,
   constraint PK_GERE primary key (CONTACT_ID, CLIENT_ID, PROJET_ID)
);

/*==============================================================*/
/* Table : INCLUT                                               */
/*==============================================================*/
create table INCLUT 
(
   PROJET_ID            INT(4)            not null,
   DOCUMENT_ID          INT               not null,
   constraint PK_INCLUT primary key (PROJET_ID, DOCUMENT_ID)
);

/*==============================================================*/
/* Table : INTERVENTION                                         */
/*==============================================================*/
create table INTERVENTION 
(
   INTERVENTION_ID      INT               not null,
   COLLA_ID             INT(4)            not null,
   FONCTION_ID          INT               not null,
   ETAPE_ID             INT(6)            not null,
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
   NATURE_ID            INT               not null,
   NATURE_LIBELLE       CHAR(50)             not null,
   constraint PK_NATURE_CLIENT primary key (NATURE_ID)
);

/*==============================================================*/
/* Table : PROJET                                               */
/*==============================================================*/
create table PROJET 
(
   PROJET_ID            INT(4)            not null,
   TYPEPROJ_ID          INTEGER              not null,
   COLLA_ID             INT(4)            not null,
   ACTIVITE_ID          INT               not null,
   PROJET_CHARGE_GLOBALE_ESTIMEE INT               not null,
   PROJET_CHARGE_REELE  INT,
   PROJET_COLLA_MAX     INT,
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
   PROJET_TAILLE        INT,
   constraint PK_PROJET primary key (PROJET_ID),
   constraint CHK_DATE_PREVUE_PROJ CHECK(PROJET_DATE_PREVUE_DEBUT < PROJET_DATE_PREVUE_FIN),
   constraint CHK_DATE_REELLE_PROJ CHECK(PROJET_DATE_REELLE_DEBUT < PROJET_DATE_REELLE_FIN)
);


/*==============================================================*/
/* Table : SALAIRE                                              */
/*==============================================================*/
create table SALAIRE 
(
   SALAIRE_ID           INT               not null,
   COLLA_ID             INT(4)            not null,
   SALAIRE_MONTANT      INT               not null,
   SALAIRE_DATE         DATE                 not null,
   constraint PK_SALAIRE primary key (SALAIRE_ID)
);


/*==============================================================*/
/* Table : TECHNOLOGIE                                          */
/*==============================================================*/
create table TECHNOLOGIE 
(
   TECHNOLOGIE_ID       INT               not null,
   TYPETECHNO_ID        INT               not null,
   TECHNOLOGIE_LIBELLE  CHAR(50)             not null,
   constraint PK_TECHNOLOGIE primary key (TECHNOLOGIE_ID)
);

/*==============================================================*/
/* Table : TYPE_TECHNO                                          */
/*==============================================================*/
create table TYPE_TECHNO 
(
   TYPETECHNO_ID        INT               not null,
   TYPETECHNO_LIBELLE   CHAR(50)             not null,
   constraint PK_TYPE_TECHNO primary key (TYPETECHNO_ID)
);

/*==============================================================*/
/* Table : UTILISE                                              */
/*==============================================================*/
create table UTILISE 
(
   TECHNOLOGIE_ID       INT               not null,
   PROJET_ID            INT(4)            not null,
   constraint PK_UTILISE primary key (TECHNOLOGIE_ID, PROJET_ID)
);
/*==============================================================*/
/* Table : TYPE_PROJET                                        */
/*==============================================================*/

create table TYPE_PROJET 
(
   TYPEPROJ_ID          INTEGER              not null,
   TYPEPROJ_LIBELLE     CHAR(20)             not null,
   constraint PK_TYPE_PROJET primary key (TYPEPROJ_ID)
);