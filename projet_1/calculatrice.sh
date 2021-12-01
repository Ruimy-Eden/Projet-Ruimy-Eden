#!/bin/bash
calc(){ awk "BEGIN { print $* }"; }
while [ -z $continuer ] || [ $continuer != 'non' ] #faire attention aux espaces ils m'ont faire perdre énormement de temps
do						   #tant que 'non' n'est pas écrit on coninue de faire des calculs
	echo "Entrez le symbole du calcul que vous voulez effectuer : +,-,*,/"
	read calcul
	case $calcul in #je fais un switch des différents calcul
		"+")
			echo "Entrez a puis b pour une addition"
			declare -x a
			declare -x b
			read a
			read b
			let addition=a+b
			echo "Le résultat de cette addition est : "$addition
			;;
		"-")
			echo "Entrez a puis b pour une soustraction"
			declare -x a
			declare -x b
			read a
			read b
			let soustraction=a-b
			echo "Le résultat de cette soustraction est : "$soustraction
			;;
		"*")
			echo "Entrez a puis b pour une multiplication"
			declare -x a
			declare -x b
			read a
			read b
			let multiplication=a*b
			echo "Le résultat de cette multiplication est : "$multiplication
			;;
		"/")
			echo "Entrez a puis b pour une division"
			declare -x a
			declare -x b
			read a
			read b
			if [ $b == '0' ] 
			then	# je fais gaffe au cas interdit
				echo "Division par 0 impossible"
			else
				echo "Le résultat de cette division est : " 
				calc $a/$b	# me permet d'obtenir le résulat avec des chiffres derrières la virgule
			fi
			;;
		*)	# default au cas ou rien de ce que l'on veut est entré
			echo "Tu comprends pas le français ?"
			;;
	esac
	echo "Continuer oui/non" #on continue la boucle tant que la personne n'a pas écrit 'non' en entier
	read continuer
done
