#!/bin/bash
#Déplacement des fichiers sources du programme initdev partie 5.1
#creation du fichier caché .initdev
if [ -d "$HOME/.initdev" ]; then
	exit 1;
else
#copier les dossiers qui sont dans le repertoire initdev dans le fichier caché .initdev
	mkdir $HOME/.initdev;
	cp ./initdev $HOME/.initdev/;
	cp -r ./sources $HOME/.initdev/sources;
	cp -r ./gitignores $HOME/.initdev/gitignores;
	cp -r ./licenses $HOME/.initdev/licenses;
	cp -r ./bin $HOME/.initdev/bin;
	cp -r ./makefiles $HOME/.initdev/makefiles;
	exit 0;

fi
#configuration de linux	
   			PATH="$PATH:/home/"$utilisateur"/.initdev/"
			
		   source ~/.bashrc
                   echo $PATH
		   export PATH 
                  
		exit 1
		 echo "application non installée"

     echo "application installée"

	exit 0	

	echo "application installée"
fi
