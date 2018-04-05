# !/ bin / bash
# S'il n'y a pas de parametres fournis par l'utilisateur...

if [ $# = 0 ]
then
    echo "Illegal number of parameters, please check the help : initdev –help".
    fi
    if [ $# = 1] then
    echo"  Welcom to initdev's help" 
    echo "  
            -NAME:.initdev/  le but de cette application est d'implémenter un outil d’initialisation de projets.
    
            -SYNTAX:-syntax1 :/initdev <nom-project/type-de-langage > #indiquer le nom et le langage
            
                    -syntax2 :/initdev <nom-project/type-de-licence> #indiquer le nom et le type de la licence
                    
                    -syntax3 :/initdev <nom-project/type-de-langage/git > #indiquer et le nom et le langage et initialiser un depot git
                    
                    -syntax4:/initdev <nom-project/type-de-langage/type-de-licence/git > 
                    
         ARGUMENTS: -c: programme en langage c
        
                    -cpp: programme en langage c++
                   
                    -py:: programme en langage python
                    
                    -latex:: redaction en latex
                    
                    -BEAMER: presentation en BEAMER
                    
                    -GPL:GENERAL PUBLIC LICENCE
                    
                    -MIT:MIT LICENCE 
		    
            AUTHOR: BADJI YOUSRA  email: yousrabaji33@gmail.com"
	    
            fi
	    

case 1
if [ $# -eq 0 ]
then     echo "Expected arguments, please check the help : initdev –help".
 fi exit 1
 case 2
 
#creation de fichier sans extension
elif  [$# -eq 1 ]] 
           cd ..
	 
            mkdir  $1
	   touch "$1"/main
	   touch "$1"/LICENSE  
           touch "$1"/makefile
 #creation de fichier une seule extension soit type licence ou type de langage
elif 	[$# -eq 2] || [$2="GPL" ] then
	        cd "$2"/             
		#redirection du fichier vers le repertoire parent LICENCES
		cd ../
		git init
		 mkdir -p $2/{LICENCES}
		touch "$2"/LICENSES
		touch "$2"/makefile
		#copier le contenu de la licence MIT
		 cp  home/"$USER"/.initdev/LICENCE/GPL"$2"/ 
		  mv "$2"/c"$2"/.LICENCES

elif 	[$# -eq 2] || [$2="MIT"] then				 
                 cd "$2"/             
		#redirection du fichier vers le repertoire parent LICENCES
		cd ../
		git init
		 mkdir -p $2/{LICENCES}
		touch "$2"/LICENSES
		touch "$2"/makefile
		
		 cp  home/"$USER"/.initdev/licences/MIT"$2"
                 mv "$2"/c"$2"/.LICENCES
		  
		fi
		
elif 	[$# -eq 2] || [$2= "c" ] then 
             
		cd "$2"/
		git init                   
		cd ../
             #redirection du fichier vers le repertoire parent gitignores
		touch "$2"/gitifnores
                mkdir -p $2/{gitignores}
		touch "$2"/makefile
		#Copier le fichier ".gitignore" approprié au langage du projet
		
		 cp  home/"$USER"/.initdev/gitignores/c "$1"/ 
		 mv "$2"/c"$2"/.gitignore
		 
		  cp  home/"$USER"/.initdev/sources/main.c"$2"
                 mv "$2"/c"$2"/.sources
		
		fi
		elif 	[$# -eq 2] || [$2= "cpp" -o $2= "c++"] then 
             
		cd "$2"/
		git init                   
		cd ../
             #redirection du fichier vers le repertoire parent gitignores
		touch "$2"/gitifnores
                mkdir -p $2/{gitignores}
		touch "$2"/makefile
		#Copier le fichier ".gitignore" approprié au langage du projet
		
		 cp  home/"$USER"/.initdev/gitignores/cpp "$2"/ 
		  mv "$2"/cpp "$2"/.gitignore
		   cp  home/"$USER"/.initdev/sources/main.cpp "$2"
                 mv "$2"/c"$2"/.sources
		 
		elif 	[$# -eq 2] || [$2= "py"] then 
		cd "$2"/          
		git init
		cd ../
		#redirection du fichier vers le repertoire parent gitgnores
		touch "$2"/gitignores
                mkdir -p $2/{gitignores}
		touch "$1"/makefile
		 cp  home/"$USER"/.initdev/gitignores/py"$2"/ 
		  mv "$2"/py"$2"/.gitignore
		  cp  home/"$USER"/.initdev/sources/main.py"$2"
                 mv "$2"/c"$2"/.sources
		  
		fi
		elif 	[$# -eq 2] || [$2= "latex"] then 
		cd "$1"/
		git init
		cd ../
		#redirection du fichier vers le repertoire parent gitgnores
		touch "$2"/gitignores
                mkdir -p $2/{gitignores}
		touch "$2"/makefile
		 cp  home/"$USER"/.initdev/gitignores/latex "$2"/ 
		  mv "$2"/latex"$2"/.gitignore
		  cp  home/"$USER"/.initdev/sources/latexMin.tex"$2"
                 mv "$2"/c"$2"/.sources
		fi
		
             elif 	[$# -eq 2] || [$2= "beamer"] then 
		cd "$2"/
		
		cd ../
		git init
		#redirection du fichier vers le repertoire parent gitgnores
		touch "$2"/gitignores
                mkdir -p $2/{gitignores}
		touch "$1"/makefile
		#Copier le fichier ".gitignore" approprié au langage du projet
		
		 cp  home/"$USER"/.initdev/gitignores/beamer" $1"/ 
		  mv "$2"/beamer"$2"/.gitignore
		  #copier le code minimal du langage demandé
		   cp  home/"$USER"/.initle code minimal du langage demandédev/sources/beamer.tex"$2"
                 mv "$2"/c"$2"/.sources
	fi
	if [ $2 -ne "c" ]||[$2 -ne "cpp"|] | [$2 -ne "py"] - [$2 -ne "latex "]-o [$2 -ne "beamer"][$2 -ne  "MIT "GPL"]
                exit 1
                echo "You must set project type or your project licence , please check the help : initdev –help""
                fi
		
		
		
		
                exit0 
								
            
            
    
