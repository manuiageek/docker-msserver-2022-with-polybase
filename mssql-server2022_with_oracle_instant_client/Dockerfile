FROM mcr.microsoft.com/mssql/server:2022-latest

USER root

# Installer dépendances de base et éditeur
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    gnupg \
    apt-transport-https \
    libaio1 \
    unixodbc-dev \
    nano \
    unzip && \
    rm -rf /var/lib/apt/lists/*

# Ajouter dépôt Microsoft et installer PolyBase et outils SQL Server
RUN curl -fsSL https://packages.microsoft.com/keys/microsoft.asc \
    | gpg --dearmor -o /usr/share/keyrings/microsoft.gpg && \
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] \
    https://packages.microsoft.com/ubuntu/22.04/mssql-server-2022 jammy main" \
    > /etc/apt/sources.list.d/mssql-server-2022.list && \
    apt-get update && \
    ACCEPT_EULA=Y apt-get install -y \
    mssql-tools \
    mssql-server-polybase \
    mssql-server-extensibility && \
    rm -rf /var/lib/apt/lists/*

# Installer Oracle Instant Client Basic et ODBC
COPY instantclient-basic*.zip instantclient-odbc*.zip /tmp/
RUN mkdir -p /opt/oracle && \
    unzip -o -q /tmp/instantclient-basic*.zip -d /opt/oracle && \
    unzip -o -q /tmp/instantclient-odbc*.zip  -d /opt/oracle && \
    rm /tmp/instantclient-*.zip && \
    ln -s /opt/oracle/instantclient_* /opt/oracle/instantclient && \
    echo "/opt/oracle/instantclient" > /etc/ld.so.conf.d/oracle-instantclient.conf && \
    ldconfig

# Créer et configurer tnsnames.ora pour l'alias XEPDB1
RUN mkdir -p /opt/oracle/instantclient/network/admin && \
    printf "XEPDB1 =\n  (DESCRIPTION =\n    (ADDRESS=(PROTOCOL=TCP)(HOST=oracle)(PORT=1521))\n    (CONNECT_DATA=(SERVICE_NAME=XEPDB1))\n  )\n" > /opt/oracle/instantclient/network/admin/tnsnames.ora

# Déclarer le pilote dans unixODBC
RUN cat <<'EOF' > /etc/odbcinst.ini
[OracleODBC-19]
Description = Oracle ODBC driver for Instant Client
Driver      = /opt/oracle/instantclient/libsqora.so.19.1 
Setup       = /opt/oracle/instantclient/libodbcinst.so
EOF

# Créer le DSN utilisant l'alias TNS
RUN cat <<'EOF' > /etc/odbc.ini
[OracleXEPDB1]
Driver      = OracleODBC-19
Description = Oracle Database PDB
ServerName  = XEPDB1
Database    = XEPDB1
UserID      = PDBADMIN
Password    = Str0ngPASSWD123
Port        = 1521
EOF

# Variables d'environnement Oracle
ENV LD_LIBRARY_PATH=/opt/oracle/instantclient:${LD_LIBRARY_PATH} \
    PATH=/opt/oracle/instantclient:${PATH} \
    TNS_ADMIN=/opt/oracle/instantclient/network/admin \
    ORACLE_HOME=/opt/oracle/instantclient

# Copier et rendre exécutable le script d'activation de PolyBase
COPY enable-polybase.sh /enable-polybase.sh
RUN chmod +x /enable-polybase.sh

USER mssql
CMD /opt/mssql/bin/sqlservr & /enable-polybase.sh && wait
