#!/bin/bash

echo "Criando diretório na máquina!!"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criacao dos grupos de usuarios!!"

groupadd GRP_ADM
groupadd GRP_VEN
group GRP_SEC

echo "Criacao dos usuarios!!!"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) 
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo "Adicionando usuario ao grupo de destino!!"

usermod carlos -G GRP_ADM
usermod maria -G GRP_ADM
usermod joao -G GRP_ADM

usermod debora -G GRP_VEN
usermod sebastiana -G GRP_VEN
usermod roberto -G GRP_VEN

usermod josefina -G GRP_SEC
usermod amanda -G GRP_SEC
usermod rogerio -G GRP_SEC

echo "Permissao de diretorios!!!"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado o scrpit!!! "
