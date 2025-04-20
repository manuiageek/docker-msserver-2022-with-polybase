#!/bin/bash
set -e   # quitte immédiatement en cas d’erreur

# 1. Attendre que SQL Server soit prêt
echo "Attente du démarrage de SQL Server…"
until /opt/mssql-tools/bin/sqlcmd \
         -S localhost -U sa -P "$SA_PASSWORD" \
         -Q "SELECT 1" > /dev/null 2>&1; do
  sleep 2
done
echo "SQL Server démarré."

# 2. Activer PolyBase
echo "Activation de PolyBase…"
/opt/mssql-tools/bin/sqlcmd \
  -S localhost -U sa -P "$SA_PASSWORD" \
  -Q "EXEC sp_configure 'polybase enabled', 1; RECONFIGURE WITH OVERRIDE;" 