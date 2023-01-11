#!/bin/bash

#################################################################
#                                                               #
# 	Bash adivinha o numero que você pensou/digitou          #
#                                                               #
#  	Brincadando e estudando :)                              #
#                                                               #
#################################################################

#GERADOR DE NUMEROS PARES
SOHPAR="$((RANDOM%20/2*2))"

# FUNCTION PAR OU IMPAR:
PARIMPAR () {
	declare -i NUMERO
	read NUMERO
	if [[ $NUMERO =~ ^[0-9]*[02468]$ ]]; then
	    return 0
	else
	    return 1
	fi
}

echo -e "Você aceita brincar com o bash? (S/N)" ; read ACEITE

case $ACEITE in
	S)
		clear
		echo "Legal,Vamos continuar..."
		echo ""
		echo -e "Pense em um número par, entre 0 e 200 [Enter]"
		read -n5 key
		echo ""
		echo -e "Agora que pensou, guarde seu número digitando aqui: " ; read NUMERO
		echo ""

		#VERIFICAR SE O NUMERO DIGITADO E PAR OU IMPAR
		if [ PARIMPAR ];then
			echo -e "Multiplique o número escolhido por 2 [Enter]"
			read -n5 key
			echo ""
			echo -e "Minha vez(bash), com o resultado da sua multiplicação some com a quantidade -> $SOHPAR [Enter]"
			read -n5 key
			echo ""
			echo -e "Agora, pegue o resultado e divida por 2 [Enter]"
			read -n5 key
			echo ""
			echo -e "Então subtraia o resultado pelo número que pensou [Enter]"
			read -n5 key
			echo ""
			RESULTADO=$(($NUMERO*2+$SOHPAR/2-$NUMERO*2)) #REVISAR
			echo -e "O número que você pensou foi: $RESULTADO"
		else
			echo "Você não digitou um número par, tente novamente."
			exit 0
		fi
		;;
	N)
		echo ""
		echo "Está bem, até mais! Volte quando quiser."
		;;
	*)
		echo ""
		echo " Opção inválida, digite 'S' para Sim ou 'N' para Não"
		;;
	esac
