#!/bin/bash

calc(){ awk "BEGIN { print $* }"; } #permet de faire la division lorsqu'on rentre /

#tant que 'non' n'est pas écrit on continue de faire la calculatrice

while [ -z $continuer ] || [ $continuer != 'non' ] 
do						   

	echo "Entrez le symbole du calcul que vous voulez effectuer: +,-,* ou /"
	read calcul

	#je différentie chaque cas comme un switch

	case $calcul in

	"+")
	echo  "Entrez a et b à additionner"
	declare -x a 
	declare -x b
	read a 
	read b
	let addition=a+b
	echo "Le résultat de cette addition est : "$addition ;;

	"-")
	echo "Entrez a puis b pour une soustraction"
	declare -x a 
	declare -x b
	read a 
	read b
	let soustraction=a-b
	echo "Le résultat de cette soustraction est : "$soustraction ;;
			
	"*")
	echo "Entrez a puis b pour une multiplication"
	declare -x a 
	declare -x b
	read a 
	read b
	let multiplication=a*b
	echo "Le résultat de cette multiplication est : "$multiplication ;;

	"/")
	echo "Entrez a puis b pour une division"
	declare -x a 
	declare -x b
	read a 
	read b

	if [ $b == '0' ] #cas limite b=0
	then	
		echo "Division par 0 impossible"
	else
		echo "Le résultat de cette division est : " 
		calc $a/$b	# me permet d'obtenir le résulat avec des chiffres derrières la virgule
	fi #fin du if 
	;;
	
	# au cas où en entrée on a un caractére différent de +,-,* ou /

	*)	
	echo "Entrez bien un symbole du calcul que vous voulez effectuer: +,-,* ou /"	
	;;

	esac # fin du case

	echo "Continuer oui/non" #on continue la boucle while tant que la personne n'a pas écrit 'non'

	read continuer

done


