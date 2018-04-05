#!/bin/bash

if [ $# -eq "1" ] && [ "$1" != "-help" ]
then
     cd .initdev
            read $1
           		if [ "$1" = "-GPL" ] then
	        cd "$1"/             
		cd ../
		git init
		touch "$1"/LICENSES
                mkdir -p $1/{LICENCES}
		touch "$1"/makefile fi 
					 
                	if [ "$1" = "-c" ] then
          	cd "$1"/
	       git init
	       cd ../
		touch "$1"/gitifnores
                mkdir -p $1/{gitignores}
		touch "$1"/makefile fi
                 	if [ "$1" = "-c++" ] then
		cd "$1"/
		git init                   
		cd ../
		touch "$1"/gitifnores
                mkdir -p $1/{gitignores}
		touch "$1"/makefile fi
                 	 if [ "$1" = "-py" ] then
		cd "$1"/          
		git init
		cd ../
		touch "$1"/gitifnores
                mkdir -p $1/{gitignores}
		touch "$1"/makefile fi
		
                	 if [ "$1" = "latex" ] then
		cd "$1"/
		git init
		cd ../
		touch "$1"/gitifnores
                mkdir -p $1/{gitignores}
		touch "$1"/makefile fi
                 	if [ "$1" = "BEAMER" ] then
		cd "$1"/
		ion du fichier vers le repertoire parent gitgnores
		cd ../
		git init
		touch "$1"/gitignores
                mkdir -p $1/{gitignores}
		touch "$1"/makefile fi
            		if [ "$1" = "-MIT" ] then
		cd "$1"/
		git init
	        cd ../
		touch "$1"/LICENSES
                mkdir -p $1/{LICENCES}
		touch "$1"/makefile fi
                touch main.sh
                touch install.sh
                exit 1 elif [ "$1" = "-help" ]
then
     echo "
  bievenue sue le help du projet" 
    echo "  -NAME:.initdev/  premier projet des RO
     -SYNTAXE:-syntaxe 1 : le langage utiliser 
  -syntaxe 2 :le type de la licence
      - ARGUMENTS: -c: programme en langage c
    -c++: programme en langage c++
    -py:: programme en langage python
    -latex:: redaction en latex
    -BEAMER: presentation en BEAMER
    -GPL:GENERAL PUBLIC LICENCE
    -MIT:MIT LICENCE    
            -AUTHOR: BENTAHA Sabrina email: sabrinabentaha@gmail.com" fi
else
    echo "Expected arguments, please check the help : initdev –help" fi exit 0 
