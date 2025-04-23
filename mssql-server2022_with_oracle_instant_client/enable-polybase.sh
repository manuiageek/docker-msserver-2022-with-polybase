#!/bin/bash
set -e

echo "Attente du démarrage de SQL Server…"
until /opt/mssql-tools/bin/sqlcmd \
         -S localhost -U sa -P "$SA_PASSWORD" \
         -Q "SELECT 1"; do
  echo "En attente de SQL Server (mot de passe utilisé : $SA_PASSWORD)"
  sleep 2
done
echo "SQL Server démarré."

echo "Activation de PolyBase…"
/opt/mssql-tools/bin/sqlcmd \
  -S localhost -U sa -P "$SA_PASSWORD" \
  -Q "EXEC sp_configure 'polybase enabled', 1; RECONFIGURE WITH OVERRIDE;"