#!/bin/bash

#################################################################
#                                                               #
# 	Bash adivinha o numero que você pensou e digitou            #
#                                                               #
#  	Brincadeira e estudando :)                                  #
#                                                               #
#################################################################

echo -e "Você aceita brincar com o bash? (S/N)" ; read ACEITE

case $ACEITE in
	S)
		clear
		echo "Legal,Vamos continuar..."
		echo ""
		echo -e "Pense em um número par, entre 0 e 200"
		read -n5 key
		echo ""
		echo -e "Agora que pensou, guarde seu número digitando aqui: " ; read NUMERO
		echo ""
		VERIFICA=$1
	if [ '($VERIFICA%2)' -eq '0' ];then
		echo -e "Multiplique o número escolhido por 2"
		read -n5 key
	elif [ '($VERIFICA%2)' -ne '0' ];then
		echo "Você não digitou um número par, tente novamente."
	fi

		
#		echo -e "Multiplique o número escolhido por 2"
#		read -n5 key
		echo ""
		echo -e "Agora, pegue o resultado e divida por 2"
		read -n5 key
		echo ""
		echo -e "Então subtraia o resultado pelo número que pensou"
		read -n5 key
		echo ""
		RESULTADO=$(($NUMERO*2+10/2-$NUMERO*2))
		echo -e "O número que você pensou foi: $RESULTADO"
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
