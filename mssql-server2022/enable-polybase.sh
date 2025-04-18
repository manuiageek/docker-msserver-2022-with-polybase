#!/bin/bash
/opt/mssql-tools/bin/sqlcmd \
   -S localhost -U sa -P "$SA_PASSWORD" \
   -Q "EXEC sp_configure 'polybase enabled',1; RECONFIGURE;";
