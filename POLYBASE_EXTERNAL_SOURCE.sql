-- Création de l'objet DATA SOURCE (à adapter à ton scénario, stockage etc.)
CREATE EXTERNAL DATA SOURCE MyExternalData
WITH (
    LOCATION = 'hdfs://localhost:9000'  -- Exemple, peut aussi être 's3://...' ou autre
);

-- Création de l'objet FORMAT FILE (exemple simple CSV)
CREATE EXTERNAL FILE FORMAT MyFileFormat
WITH (
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS (FIELD_TERMINATOR = ',', STRING_DELIMITER = '"')
);

-- Création de la TABLE EXTERNE
CREATE EXTERNAL TABLE dbo.MyExternalTable (
    col1 int,
    col2 varchar(50)
)
WITH (
    LOCATION = '/mon-fichier.csv',
    DATA_SOURCE = MyExternalData,
    FILE_FORMAT = MyFileFormat
);