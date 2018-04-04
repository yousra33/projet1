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
		    
            AUTHOR: BADJI YOUSRA  email: yousrabaji33@gmail.com
	    
            fi
	    
            $pwd 
            cd .initdev
            read $1
           if [ "$1" = "-GPL" ] then
	        cd "$1"/             
		#redirection du fichier vers le repertoire parent LICENCES
		cd ../
		git init
		touch "$1"/LICENSES
                mkdir -p $1/{LICENCES
		touch "$1"/makefile
					 
                if [ "$1" = "-c" ] then
          	cd "$1"/
	       git init
	       cd ../
	       #redirection du fichier vers le repertoire parent gitignores 
		touch "$1"/gitifnores
                mkdir -p $1/{gitignores}
		touch "$1"/makefile
		fi
		
                 if [ "$1" = "-cpp" ] then
		cd "$1"/
		git init                   
		cd ../
             #redirection du fichier vers le repertoire parent gitignores
		touch "$1"/gitifnores
                mkdir -p $1/{gitignores}
		touch "$1"/makefile
		fi
		
                 if [ "$1" = "-py" ] then
		cd "$1"/          
		git init
		cd ../
		#redirection du fichier vers le repertoire parent gitgnores
		touch "$1"/gitifnores
                mkdir -p $1/{gitignores}
		touch "$1"/makefile
		fi
		
                 if [ "$1" = "latex" ] then
		cd "$1"/
		git init
		cd ../
		#redirection du fichier vers le repertoire parent gitgnores
		touch "$1"/gitifnores
                mkdir -p $1/{gitignores}
		touch "$1"/makefile
		fi
		
                 if [ "$1" = "BEAMER" ] then
		cd "$1"/
		ion du fichier vers le repertoire parent gitgnores
		cd ../
		git init
		#redirect
		touch "$1"/gitignores
                mkdir -p $1/{gitignores}
		touch "$1"/makefile
		fi
           
            if [ "$1" = "-MIT" ] then
		cd "$1"/
		git init
	        cd ../
		#redirection du fichier vers le repertoire parent LICENCES
		touch "$1"/LICENSES
                mkdir -p $1/{LICENCES}
		touch "$1"/makefile
                fi
		
                touch main.sh
                touch install.sh
                exit 1
                echo "You must set project type, please check the help : initdev –help""
                fi
                exit0 
								
            
            
    
