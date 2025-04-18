#!/bin/bash

# Attendre que SQL Server soit prêt
echo "Attente du démarrage de SQL Server..."
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "$SA_PASSWORD" -Q "SELECT 1" > /dev/null 2>&1
while [ $? -ne 0 ]; do
  sleep 2
  /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "$SA_PASSWORD" -Q "SELECT 1" > /dev/null 2>&1
done
echo "SQL Server démarré."

# Activation de PolyBase
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "$SA_PASSWORD" -Q "exec sp_configure 'polybase enabled', 1; RECONFIGURE WITH OVERRIDE;"