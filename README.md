# Link DOCKER HUB

https://hub.docker.com/r/microsoft/mssql-server

## docker pull

docker pull mcr.microsoft.com/mssql/server:2022-latest

### Docker volume :

docker volume create mssql_data

# GIT CLONE INSTALL POLYBASE

git clone https://github.com/microsoft/mssql-docker.git

# CONNEXION CLIENT

## CLIENT MSSQL-TOOLS

docker run -it --rm --network host -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Str0ngPASSWD!' mcr.microsoft.com/mssql-tools

sqlcmd -S localhost,1433 -U sa -P "Str0ngPASSWD!"
GO

## CLIENT LOURD

https://learn.microsoft.com/en-us/ssms/download-sql-server-management-studio-ssms?utm_source=chatgpt.com

Nom serveur : localhost, 1433
Authentification : Authentification SQL Server
Connexion : sa
Mot de passe : StrongPASSWD!
Chiffrement : Facultatif

### check option available :

SELECT SERVERPROPERTY('IsPolyBaseInstalled') AS IsPolyBaseInstalled;

### check option enabled

SELECT value_in_use FROM sys.configurations WHERE name = 'polybase enabled';

## check si polybase est up

docker compose build --no-cache
docker compose up -d

SELECT SERVERPROPERTY('IsPolyBaseInstalled') AS Installed,
(SELECT value_in_use FROM sys.configurations
WHERE name = 'polybase enabled') AS Enabled;
