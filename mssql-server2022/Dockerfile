FROM mcr.microsoft.com/mssql/server:2022-latest

USER root

# 1) Outils indispensables
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl ca-certificates gnupg apt-transport-https

# 2) Clé GPG Microsoft
RUN curl -fsSL https://packages.microsoft.com/keys/microsoft.asc \
    | gpg --dearmor -o /usr/share/keyrings/microsoft.gpg

# 3) Dépôt SQL Server 2022 (CU) – une seule ligne "deb ..."
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] \
    https://packages.microsoft.com/ubuntu/22.04/mssql-server-2022 jammy main" \
    > /etc/apt/sources.list.d/mssql-server-2022.list

# 4) Mise à jour + installation des composants
RUN apt-get update && \
    ACCEPT_EULA=Y apt-get install -y \
    mssql-server-polybase \
    mssql-server-extensibility && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY enable-polybase.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/enable-polybase.sh
USER mssql
CMD /usr/local/bin/enable-polybase.sh & /opt/mssql/bin/sqlservr
