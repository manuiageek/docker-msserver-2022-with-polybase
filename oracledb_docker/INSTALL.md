# Installation of oracle XE

https://www.oracle.com/database/technologies/oracle21c-linux-downloads.html
download : LINUX.X64_213000_db_home.zip

# Make docker image

### clone and prepare for build

git clone https://github.com/oracle/docker-images.git
copy LINUX.X64_XXX_db_home.zip (without unzipping) into "docker-images/OracleDatabase/SingleInstance/dockerfiles/XXX/"
cd OracleDatabase/SingleInstance/dockerfiles

### DOCKER commands in a powershell

#### build image

./buildContainerImage.sh -v 21.3.0 -x
docker images | Select-String "oracle/database"

#### create volume

docker volume create oracle-data

#### docker compose up

cd oracledb_docker
docker-compose up -d
docker logs -f oracle

#### and wait for :

#########################
DATABASE IS READY TO USE!
#########################

#### Oracle SQL Developer

Nom de connexion: XEPDB1‑PDB
Nom d’utilisateur: PDBADMIN
Mot de passe: Str0ngPASSWD123
Rôle: par défaut
Hôte: localhost
Port: 1521
Nom de service : XEPDB1

#### test sql

SELECT username FROM all_users ORDER BY username;

#### give PBADMIN user some rights

docker exec -it oracle bash
sqlplus sys/Str0ngPASSWD123@XEPDB1 AS SYSDBA
ALTER SESSION SET CONTAINER = XEPDB1;
GRANT CREATE SESSION, CREATE TABLE, CREATE SEQUENCE, CREATE VIEW, DROP ANY TABLE, DROP ANY VIEW, DROP ANY SEQUENCE, ALTER ANY TABLE, ALTER ANY SEQUENCE, UNLIMITED TABLESPACE TO PDBADMIN CONTAINER=CURRENT;
GRANT UNLIMITED TABLESPACE TO PDBADMIN CONTAINER=CURRENT;

### try a dataset like mine

ventes_legumes.sql

docker exec -it oracle bash
sqlplus sys/Str0ngPASSWD123@XEPDB1 AS SYSDBA
GRANT ALL PRIVILEGES ON PDBADMIN.VENTES_LEGUMES TO PDBADMIN;
GRANT CREATE ANY DIRECTORY TO PDBADMIN;
GRANT READ, WRITE ON DIRECTORY DATA_PUMP_DIR TO PDBADMIN;
GRANT EXECUTE ON DBMS_LOCK TO PDBADMIN;
