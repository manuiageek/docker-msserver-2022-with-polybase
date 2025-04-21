-- https://learn.microsoft.com/fr-fr/sql/relational-databases/polybase/polybase-configure-oracle?view=sql-server-ver16
-- Sélectionner une base de données utilisateur (remplacer 'VotreBaseDeDonnees' par le nom de votre base)
USE FRUITS;
GO

--------------------------------------------------------------
-- Étape 1 : clé maître (ignore le CREATE si elle existe déjà)
--------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM sys.symmetric_keys WHERE name LIKE '%DatabaseMasterKey%')
    CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'P@55w0rd_M@5t3r#K3y!2025$PolyB@se';
GO

------------------------------------------------------------------
-- Étape 2 : credential Oracle
------------------------------------------------------------------
IF NOT EXISTS (SELECT * FROM sys.database_credentials WHERE name = 'OracleCredential')
    CREATE DATABASE SCOPED CREDENTIAL OracleCredential
        WITH IDENTITY = 'PDBADMIN',
             SECRET   = 'Str0ngPASSWD123';
GO

------------------------------------------------------------------
-- Étape 3 : external data source
------------------------------------------------------------------
DROP EXTERNAL DATA SOURCE OracleSource;
GO

CREATE EXTERNAL DATA SOURCE OracleSource
WITH (
    LOCATION = 'oracle://oracle:1521',
    CREDENTIAL = OracleCredential
);


------------------------------------------------------------------
-- Étape 4 : table externe
------------------------------------------------------------------
IF OBJECT_ID('dbo.ventes_legumes_ext') IS NOT NULL
    DROP EXTERNAL TABLE dbo.ventes_legumes_ext;
GO
CREATE EXTERNAL TABLE dbo.ventes_legumes_ext (
    ID          FLOAT NOT NULL,
    NOM_LEGUME  VARCHAR(50) COLLATE Latin1_General_100_BIN2_UTF8,
    TYPE_LEGUME VARCHAR(50) COLLATE Latin1_General_100_BIN2_UTF8,
    VILLE       VARCHAR(50) COLLATE Latin1_General_100_BIN2_UTF8,
    VENTE_Q1    FLOAT,
    VENTE_Q2    FLOAT,
    VENTE_Q3    FLOAT,
    VENTE_Q4    FLOAT
)
WITH (
    LOCATION = '[XEPDB1].PDBADMIN.VENTES_LEGUMES',
    DATA_SOURCE = OracleSource
);
GO