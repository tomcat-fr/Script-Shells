# Verif Users Winigate

#!/bin/ksh

# positionnement dans le repertoire des utilisateurs Winigate
cd /apps/gtw1/Custo/commona/users/

# positionnement des variables
read -p "Coller ici la liste des UID à verifier (voir Formel) : " users
read -p "Saisir l'IDF concerné :" idf
read -p "Saisir la direction du flux, (D)ownload ou (U)pload :" direct

# Suppression des virgules dans la listes des UID et alimentation des variables

echo $users | sed -e "s/,//g" > uid.lst
read uid < uid.lst

for i in $uid
        do echo "UID : $users" ; ls -ltr /apps/gtw1/Custo/commona/users/$idf/$direct*
done
