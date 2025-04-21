-- Test de connexion Oracle via ODBC
DECLARE @linked_server NVARCHAR(128) = 'ORACLE_TEST';

-- Ajouter un linked server temporaire
EXEC sp_addlinkedserver 
    @server = @linked_server,
    @srvproduct = 'Oracle',
    @provider = 'MSDASQL',
    @datasrc = 'OracleXEPDB1';

EXEC sp_addlinkedsrvlogin
    @rmtsrvname = @linked_server,
    @useself = 'FALSE',
    @locallogin = NULL,
    @rmtuser = 'PDBADMIN',
    @rmtpassword = 'Str0ngPASSWD123';

-- Tester la connexion
BEGIN TRY
    EXEC('SELECT 1 FROM OPENQUERY(' + @linked_server + ', ''SELECT 1 FROM dual'')');
    PRINT 'Connexion Oracle réussie';
    
    -- Vérifier l'existence de la table
    EXEC('SELECT 1 FROM OPENQUERY(' + @linked_server + ', ''SELECT COUNT(*) FROM ventes_legumes'')');
    PRINT 'Table ventes_legumes trouvée dans Oracle';
END TRY
BEGIN CATCH
    PRINT 'Erreur: ' + ERROR_MESSAGE();
END CATCH

-- Supprimer le linked server temporaire
EXEC sp_dropserver @linked_server, 'droplogins';