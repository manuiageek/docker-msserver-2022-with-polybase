# Link DOCKER HUB

https://hub.docker.com/r/microsoft/mssql-server

docker pull mcr.microsoft.com/mssql/server:2022-latest

docker volume create mssql_data

docker network create dbnet

# Installation of oracle instant client

https://www.oracle.com/database/technologies/instant-client/linux-x86-64-downloads.html

Download : instantclient-basic-linux.x64-19.26.0.0.0dbru.zip
Download : instantclient-odbc-linux.x64-19.26.0.0.0dbru.zip

# BUILD

cd mssql-server2022_with_oracle_instant_client
docker compose build --no-cache
docker compose up -d

## check si polybase est up
docker exec -it sqlserver ls /opt/oracle/instantclient
docker exec -it sqlserver ldd /opt/oracle/instantclient/libclntsh.so

docker exec -u root -it sqlserver bash
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'Str0ngPASSWD!'

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'Str0ngPASSWD!' -Q "SELECT 1"

SELECT SERVERPROPERTY('IsPolyBaseInstalled') AS Installed,
(SELECT value_in_use FROM sys.configurations WHERE name = 'polybase enabled') AS Enabled;

-- Vérifier l'installation de PolyBase
SELECT SERVERPROPERTY('IsPolyBaseInstalled') AS IsPolyBaseInstalled;

# CONNECTION CLIENT SSMS

https://learn.microsoft.com/en-us/ssms/download-sql-server-management-studio-ssms

Nom serveur : localhost, 1433
Authentification : Authentification SQL Server
Connexion : sa
Mot de passe : Str0ngPASSWD!
Chiffrement : Facultatif

# Test polybase

https://learn.microsoft.com/en-us/sql/relational-databases/polybase/polybase-configure-oracle?view=sql-server-ver16

docker exec -u root -it sqlserver bash
cat /etc/odbcinst.ini
cat /etc/odbc.ini
isql -v OracleXEPDB1 PDBADMIN Str0ngPASSWD123

# Troubleshooting

docker exec -it sqlserver bash -c "cat /var/opt/mssql/log/polybase/MSSQLSERVER_localhost_DWEngine_errors.log | tail -n 50"
docker exec -it sqlserver bash -c "cat /var/opt/mssql/log/polybase/MSSQLSERVER_localhost_DWEngine_server.log | grep -i 'oracle\|odbc\|error' | tail -n 50"
