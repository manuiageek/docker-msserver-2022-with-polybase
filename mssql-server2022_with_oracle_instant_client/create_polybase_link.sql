-- Gestion de la clé maître
IF NOT EXISTS (SELECT * FROM sys.symmetric_keys WHERE name LIKE '%DatabaseMasterKey%')
BEGIN
    -- Créer la clé maître pour chiffrer les informations d'identification
    CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'P@55w0rd_M@5t3r#K3y!2025$PolyB@se';
    PRINT 'Clé maître créée avec succès';
END
ELSE
BEGIN
    PRINT 'La clé maître existe déjà';
END

-- Gestion des informations d'identification
IF NOT EXISTS (SELECT * FROM sys.database_credentials WHERE name = 'OracleCredential')
BEGIN
    -- Créer les informations d'identification
    CREATE DATABASE SCOPED CREDENTIAL OracleCredential WITH IDENTITY = 'PDBADMIN', SECRET = 'Str0ngPASSWD123';
    PRINT 'Identifiant de base de données créé avec succès';
END
ELSE
BEGIN
    PRINT 'L''identifiant OracleCredential existe déjà';
    -- Si vous souhaitez recréer les identifiants, décommentez ces lignes
    -- DROP DATABASE SCOPED CREDENTIAL OracleCredential;
    -- CREATE DATABASE SCOPED CREDENTIAL OracleCredential WITH IDENTITY = 'PDBADMIN', SECRET = 'Str0ngPASSWD123';
END

-- Gestion de la source de données externe
IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'OracleSource')
BEGIN
    -- Créer la source de données externe pointant vers Oracle
    CREATE EXTERNAL DATA SOURCE OracleSource 
    WITH (
        LOCATION = 'odbc://oracle:1521',
        CONNECTION_OPTIONS = 'DSN=OracleXEPDB1',
        CREDENTIAL = OracleCredential
    );
    PRINT 'Source de données externe créée avec succès';
END
ELSE
BEGIN
    PRINT 'La source de données OracleSource existe déjà';
    -- Si vous souhaitez recréer la source, décommentez ces lignes
    -- DROP EXTERNAL DATA SOURCE OracleSource;
    -- CREATE EXTERNAL DATA SOURCE OracleSource 
    -- WITH (
    --     LOCATION = 'odbc://oracle:1521',
    --     CONNECTION_OPTIONS = 'DSN=OracleXEPDB1',
    --     CREDENTIAL = OracleCredential
    -- );
END

-- Gestion de la table externe
IF NOT EXISTS (SELECT * FROM sys.external_tables WHERE name = 'ventes_legumes_ext')
BEGIN
    -- Créer une table externe correspondant à la table des légumes dans Oracle
    CREATE EXTERNAL TABLE ventes_legumes_ext (
        id INT,
        nom_legume NVARCHAR(50),
        type_legume NVARCHAR(50),
        ville NVARCHAR(50),
        vente_q1 INT,
        vente_q2 INT,
        vente_q3 INT,
        vente_q4 INT
    )
    WITH (
        LOCATION = 'ventes_legumes',
        DATA_SOURCE = OracleSource
    );
    PRINT 'Table externe créée avec succès';
END
ELSE
BEGIN
    PRINT 'La table externe ventes_legumes_ext existe déjà';
    -- Si vous souhaitez recréer la table, décommentez ces lignes
    -- DROP EXTERNAL TABLE ventes_legumes_ext;
    -- CREATE EXTERNAL TABLE ventes_legumes_ext (...)
END