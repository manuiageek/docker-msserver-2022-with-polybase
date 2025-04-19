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
docker logs -f oracle-21-build

#### and wait for :

#########################
DATABASE IS READY TO USE!
#########################

#### Oracle SQL Developer

Nom de connexion: XE‑CDB
Nom d’utilisateur: SYS
Mot de passe: Str0ngPASSWD123
Rôle: SYSDBA (uniquement si vous utilisez SYS)
Hôte: localhost
Port: 1521
SID: XE (cochez SID)

SELECT username, account_status FROM dba_users ORDER BY username;

### try a dataset like mine

ventes_legumes.sql
