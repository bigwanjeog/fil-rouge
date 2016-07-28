CREATE USER SECRETAIRE IDENTIFIED BY afpa2016;

GRANT CREATE SESSION ON RENAUD.PROJET TO SECRETAIRE;
GRANT SELECT ON RENAUD.PROJET TO SECRETAIRE;    
GRANT INSERT, UPDATE (PROJET_DATE_REELLE_DEBUT, PROJET_DATE_REELLE_FIN, PROJET_COLLA_MAX) ON RENAUD.PROJET TO SECRETAIRE;
GRANT INSERT, UPDATE (ETAPE_CHARGE_PROD,ETAPE_CHARGEVALID) ON RENAUD.ETAPE TO SECRETAIRE;
GRANT INSERT, UPDATE (DOCUMENT_ID ) ON RENAUD.DOCUMENT TO SECRETAIRE;
