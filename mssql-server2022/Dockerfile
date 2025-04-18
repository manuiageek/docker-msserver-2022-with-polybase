FROM mcr.microsoft.com/mssql/server:2022-latest

# --- Étape 1 : dépendances de base --------------------------
USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl ca-certificates gnupg apt-transport-https

# --- Étape 2 : dépôt Microsoft + clé GPG --------------------
RUN curl -fsSL https://packages.microsoft.com/keys/microsoft.asc \
    | gpg --dearmor -o /usr/share/keyrings/microsoft.gpg

RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] \
    https://packages.microsoft.com/ubuntu/22.04/mssql-server-2022 jammy main" \
    > /etc/apt/sources.list.d/mssql-server-2022.list

# --- Étape 3 : installation PolyBase + Extensibility --------
RUN apt-get update && \
    ACCEPT_EULA=Y apt-get install -y \
    mssql-server-polybase \
    mssql-server-extensibility && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# --- Étape 4 : activer PolyBase AVANT le premier boot -------
# RUN /opt/mssql/bin/mssql-conf -n set polybase.enabled true && \
# chown -R mssql:mssql /var/opt/mssql

# --- Étape 5 : démarrage du moteur -------------------------
USER mssql
CMD ["/opt/mssql/bin/sqlservr"]
