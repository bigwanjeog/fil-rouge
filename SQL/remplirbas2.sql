/****
AJOUT DE DONNEES POUR LA TABLE ACTIVITE
****/
INSERT INTO ACTIVITE VALUES ('', 'Secteur financier et juridique');
INSERT INTO ACTIVITE VALUES ('', 'Négoce et commerce de biens');
INSERT INTO ACTIVITE VALUES ('', 'Alimentation');
INSERT INTO ACTIVITE VALUES ('', 'Bâtiment, Immobilier');
INSERT INTO ACTIVITE VALUES ('', 'Expertise');
INSERT INTO ACTIVITE VALUES ('', 'Tourisme, loisirs, culture');
INSERT INTO ACTIVITE VALUES ('', 'Enseignement');
INSERT INTO ACTIVITE VALUES ('', 'Autres services');

/****
AJOUT DE DONNEES POUR LA TABLE FONCTION
****/
INSERT INTO FONCTION VALUES ('','Directeur général');
INSERT INTO FONCTION VALUES ('','Responsable des ressources humaines');
INSERT INTO FONCTION VALUES ('','Responsable Commercial');
INSERT INTO FONCTION VALUES ('','Secrétaire administratif');
INSERT INTO FONCTION VALUES ('','Responsable du département études');
INSERT INTO FONCTION VALUES ('','Chef de Projet');
INSERT INTO FONCTION VALUES ('','Analyste');
INSERT INTO FONCTION VALUES ('','Développeur');
INSERT INTO FONCTION VALUES ('','Secrétaire technique');
INSERT INTO FONCTION VALUES ('','Technicien support');
INSERT INTO FONCTION VALUES ('','Commercial');

/****
AJOUT DE DONNEES POUR LA TABLE NATURE CLIENT
****/
INSERT INTO NATURE_CLIENT VALUES ('','principale');
INSERT INTO NATURE_CLIENT VALUES ('','secondaire');
INSERT INTO NATURE_CLIENT VALUES ('','ancienne');

/****
AJOUT DE DONNEES POUR LA TABLE TYPE PROJET
****/
INSERT INTO TYPE_PROJET VALUES('', 'forfait');
INSERT INTO TYPE_PROJET VALUES('', 'régie');
INSERT INTO TYPE_PROJET VALUES('', 'assistance');

/****
AJOUT DE DONNEES POUR LA TABLE ETAPE PROJET
****/
INSERT INTO ETAPE_PROJET VALUES ('','Analyse des besoins');
INSERT INTO ETAPE_PROJET VALUES ('','Conception');
INSERT INTO ETAPE_PROJET VALUES ('','Programmation');
INSERT INTO ETAPE_PROJET VALUES ('','Tests unitaires');
INSERT INTO ETAPE_PROJET VALUES ('','Tests d’intégration');
INSERT INTO ETAPE_PROJET VALUES ('','Tests de recette et installation');
INSERT INTO ETAPE_PROJET VALUES ('','Management du projet');
INSERT INTO ETAPE_PROJET VALUES ('','Gestion de configuration');
INSERT INTO ETAPE_PROJET VALUES ('','Formation spécifique au projet');
INSERT INTO ETAPE_PROJET VALUES ('','Divers');

/****
AJOUT DE DONNEES POUR LA TABLE TYPE TECHNO
****/
INSERT INTO TYPE_TECHNO VALUES ('', 'Langage');
INSERT INTO TYPE_TECHNO VALUES ('', 'Base de donnée');
INSERT INTO TYPE_TECHNO VALUES ('', 'Plateformes');

/****
AJOUT DE DONNEES POUR LA TABLE TECHNOLOGIE
****/
INSERT INTO TECHNOLOGIE VALUES ('', 1,'Javascript');
INSERT INTO TECHNOLOGIE VALUES ('', 1,'C#');
INSERT INTO TECHNOLOGIE VALUES ('', 1,'PHP');
INSERT INTO TECHNOLOGIE VALUES ('', 1,'Python');
INSERT INTO TECHNOLOGIE VALUES ('', 2,'SQL Server');
INSERT INTO TECHNOLOGIE VALUES ('', 2,'postgreSQL');
INSERT INTO TECHNOLOGIE VALUES ('', 3,'Ubuntu 15.10');
INSERT INTO TECHNOLOGIE VALUES ('', 3,'Windows 10');

/****
AJOUT DE DONNEES POUR LA TABLE CLIENT
****/

INSERT INTO CLIENT VALUES('',1,3,'22 rue des Maraîchers',800000,'Bon client, fier de la région bretonne',40,'kouign@amann.bzh','Ker Cadélac','0205418646',2);
INSERT INTO CLIENT VALUES('',1,4,'31,avenue du Général de Gaulle',4000000,'Communique uniquement en breton',30,'bzh_batiment@gmail.com','Breizh Batîment Père et Fils','0246468436',2);
INSERT INTO CLIENT VALUES('',1,3,'31,rue de la paix',1000000,'Restaurant alsacien',10,'extrawurst@gmail.com','Extrawurst','0246228666',2);

/****
AJOUT DE DONNEES POUR LA TABLE CONTACT
****/

INSERT INTO CONTACT VALUES('','john_kerguelen@gmail.com','Directeur marketing','0606060606','Kerguelen','John','0244846866');
INSERT INTO CONTACT VALUES('','miguel_dos_santos@gmail.com','Contremaître','0745869575','Dos Santos','Miguel','0214846486');
INSERT INTO CONTACT VALUES('','schneider.seppi@gmail.com','Chef cuisinier','0741061075','Schneider','Joseph','0214416422');

/****
AJOUT DE DONNEES POUR LA TABLE COLLABORATEUR
****/
INSERT INTO COLLABORATEUR VALUES('',1,1,'38, rue du Sauvage',null,'29000','15/07/2009',null,'jk_le_guen@gmail.com','0741061079','Le Guen','Jean-Kévin','M','CDI','0214416355','MR','Brest');
INSERT INTO COLLABORATEUR VALUES('',1,2,'96, boulevard du Maréchal Joffre',null,'56000','29/07/2009',null,'amandine.dupont@gmail.com','0641068709','Dupont','Amandine','F','CDI','0213716355','MME','Vannes');
INSERT INTO COLLABORATEUR VALUES('',2,6,'61, avenue François Mitterrand',null,'35000','02/09/2009',null,'dominique.schmitt@gmail.com','0684625138','Schmitt','Dominique','M','CDI','0284868712','MR','Rennes');
INSERT INTO COLLABORATEUR VALUES('',2,8,'33, rue des pommiers',null,'35000','27/06/2016',null,'bill.portail@gmail.com','0685724438','Portail','Bill','M','STA','0241854712','MR','Rennes');

/****
AJOUT DE DONNEES POUR LA TABLE SALAIRE
****/
INSERT INTO SALAIRE VALUES ('',1,80000,'01/08/2016');
INSERT INTO SALAIRE VALUES ('',2,15000.42,'01/08/2016');
INSERT INTO SALAIRE VALUES ('',3,55000.01,'01/08/2016');
INSERT INTO SALAIRE VALUES ('',4,15,'01/08/2016');

/****
AJOUT DE DONNEES POUR LA TABLE PROJET
****/
INSERT INTO PROJET VALUES ('',1,3,3,404,666,2,'Des échantillons de produits de la gastronomie bretonne sont mis à disposition par le client','Conception','5/08/2016','30/10/2016','5/08/2016',null,'Le projet peut tirer en longueur à cause des dégustations de produits bretons','Logiciel de Gestion de crêpes en C#','Ges_Crêpe','Gestion de Crêpes Bretonnes',448);
INSERT INTO PROJET VALUES ('',1,3,3,200,440,2,'Gestion de plats traditionnels alsacien en PHP','Conception', '12/06/2016', '15/10/2016', '12/06/2016', null, 'Prévoir un délai pour le support de la langue alsacienne du Bas-Rhin','Gestion des plats en PHP avec une base PostgreSQL','Ges_Plats','Gestion de Plats Alsaciens',1222);
INSERT INTO PROJET VALUES ('',1,3,4,486,822,2,'Gestion des chantiers en Bretagne et au Portugal','Conception', '03/08/2016', '23/12/2016', '04/08/2016', null, 'Support de la langue portugaise obligatoire','Gestion des chantiers en Javascript avec une base PostgreSQL','Ges_Chanti','Gestion de Chantiers',12);

/****
AJOUT DE DONNEES POUR LA TABLE GERE
****/
INSERT INTO GERE VALUES (1,1,1601);
INSERT INTO GERE VALUES (2,2,1603);
INSERT INTO GERE VALUES (3,3,1602);

/****
AJOUT DE DONNEES POUR LA TABLE UTILISE
****/
INSERT INTO UTILISE VALUES (2,1601);
INSERT INTO UTILISE VALUES (5,1601);
INSERT INTO UTILISE VALUES (3,1602);
INSERT INTO UTILISE VALUES (6,1602);
INSERT INTO UTILISE VALUES (1,1603);
INSERT INTO UTILISE VALUES (6,1603);

/****
AJOUT DE DONNEES POUR LA TABLE DOCUMENT
****/

INSERT INTO DOCUMENT VALUES ('',3,'15/06/2016','Lexique Français-Portugais destiné au bâtiment','Lexique Français-Portugais');
INSERT INTO DOCUMENT VALUES ('',4,'24/07/2016','Lexique Français-Alsacien spécifique au Haut-Rhin','Lexique Français-Alsacien');

/****
AJOUT DE DONNEES POUR LA TABLE INCLUT
****/
INSERT INTO INCLUT VALUES (1603,1);
INSERT INTO INCLUT VALUES (1602,2);
