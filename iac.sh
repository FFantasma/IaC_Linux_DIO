#!/bin/bash

echo "Criando diretórios"

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos dos usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -m -s /bin/bash -c "Carlos da Silva" -p $(openssl passwd -crypt gustavo) -G GRP_ADM
useradd maria -m -s /bin/bash -c "Maria de Silva" -p $(openssl passwd -crypt gustavo) -G GRP_ADM
useradd joao -m -s /bin/bash -c "Joao da Silva" -p $(openssl passwd -crypt gustavo) -G GRP_ADM

useradd debora -m -s /bin/bash -c "Debora do Nascimento" -p $(openssl passwd -crypt gustavo) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -c "Sebastiana do Nascimento" -p $(openssl passwd -crypt gustavo) -G GRP_VEN
useradd roberto -m -s /bin/bash -c "Roberto do Nascimento" -p $(openssl passwd -crypt gustavo) -G GRP_VEN

useradd josefina -m -s /bin/bash -c "Josefina dos Santos" -p $(openssl passwd -crypt gustavo) -G GRP_SEC
useradd amanda -m -s /bin/bash -c "Amanda dos Santos" -p $(openssl passwd -crypt gustavo) -G GRP_SEC
useradd rogerio -m -s /bin/bash -c "Rogerio dos Santos" -p $(openssl passwd -crypt gustavo) -G GRP_SEC

echo "Permissão nos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica