FROM mcr.microsoft.com/mssql/server:2022-latest

# --- Étape 1 : dépendances de base --------------------------
USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl ca-certificates gnupg apt-transport-https unzip libaio1

# --- Étape 2 : dépôt Microsoft + clé GPG --------------------
RUN curl -fsSL https://packages.microsoft.com/keys/microsoft.asc \
    | gpg --dearmor -o /usr/share/keyrings/microsoft.gpg

RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg] \
    https://packages.microsoft.com/ubuntu/22.04/mssql-server-2022 jammy main" \
    > /etc/apt/sources.list.d/mssql-server-2022.list

# --- Étape 3 : installation PolyBase + Extensibility --------
RUN apt-get update && \
    ACCEPT_EULA=Y apt-get install -y \
    mssql-tools \
    unixodbc-dev \
    mssql-server-polybase \
    mssql-server-extensibility && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# --- Étape 4 : Installation de l'Oracle Instant Client ------
COPY instantclient*.zip /tmp/
RUN cd /opt && \
    unzip /tmp/instantclient*.zip && \
    rm /tmp/instantclient*.zip && \
    ln -s /opt/instantclient_* /opt/oracle-instantclient && \
    echo /opt/oracle-instantclient > /etc/ld.so.conf.d/oracle-instantclient.conf && \
    ldconfig

ENV LD_LIBRARY_PATH="/opt/oracle-instantclient:${LD_LIBRARY_PATH}"

# --- Étape 5 : activer PolyBase AVANT le premier boot -------
# RUN /opt/mssql/bin/mssql-conf -n set polybase.enabled true

COPY enable-polybase.sh /enable-polybase.sh
RUN chmod +x /enable-polybase.sh

USER mssql
CMD /opt/mssql/bin/sqlservr & /enable-polybase.sh && wait