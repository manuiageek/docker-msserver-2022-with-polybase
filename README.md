# Link DOCKER HUB

https://hub.docker.com/r/microsoft/mssql-server

docker pull mcr.microsoft.com/mssql/server:2022-latest

docker volume create mssql_data

# BUILD

cd mssql-server2022
docker compose build --no-cache
docker compose up -d

# CONNEXION CLIENT SSMS

https://learn.microsoft.com/en-us/ssms/download-sql-server-management-studio-ssms?utm_source=chatgpt.com

Nom serveur : localhost, 1433
Authentification : Authentification SQL Server
Connexion : sa
Mot de passe : StrongPASSWD!
Chiffrement : Facultatif

## check si polybase est up

docker exec -u root -it sqlserver bash
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'Str0ngPASSWD!'

SELECT SERVERPROPERTY('IsPolyBaseInstalled') AS Installed,
(SELECT value_in_use FROM sys.configurations WHERE name = 'polybase enabled') AS Enabled;

# If needed, activate manually

docker exec -u root -it sqlserver bash
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'Str0ngPASSWD!'
exec sp_configure 'polybase enabled', 1
GO
RECONFIGURE WITH OVERRIDE
GO
