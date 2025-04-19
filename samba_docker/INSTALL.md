# Pre-requisite

docker volume create dc1_etc
docker volume create dc1_private
docker volume create dc1_var

## Test add new user :

docker exec -it dc1 samba-tool user create user_test --random-password
docker exec -it dc1 samba-tool user setpassword user_test
