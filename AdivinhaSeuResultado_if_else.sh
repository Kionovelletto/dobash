#!/bin/bash

#################################################################
#                                                               #
# 	Bash adivinha o numero que você pensou/digitou          #
#                                                               #
#  	Brincando e estudando :)                                #
#    Caio H Novelletto  01/2023                                 #
#################################################################

clear
echo ""
echo -e "\e[1;36m Oi $LOGNAME, você aceita brincar com o bash? \e[1;33m(S/N)" ; read ACEITE

case $ACEITE in
	S)
		clear
		echo "Que legal, então vamos continuar... $(printf '\360\237\221\223\n')"
		echo ""
		sleep 1s
		echo -e "Pense em um número par, entre 0 e 200   [Enter]"
		read -n5 key
		echo ""
		echo -e "Você é muito rápido(a), digite o número que pensou aqui: " $(printf '\360\237\222\276\n') ; read NUMERO
		echo ""

		#VERIFICAR SE O NUMERO DIGITADO É PAR
		if [[ $NUMERO =~ ^[0-9]*[02468]$ ]]; then
			echo -e "Multiplique o número que você pensou por 2   [Enter]"
			read -n5 key
			echo ""
			echo -e "Agora multiplique o resultado por 5   [Enter]"
			read -n5 key
			echo ""
			echo -e "Colete o resultado e divida pelo primeiro número que você escolheu   [Enter]"
			read -n5 key
			echo ""
			echo -e "Estamos quase lá, agora subtraia 7 do resultado   [Enter]"
			read -n5 key
			echo ""
			RESULTADO=$(($NUMERO*2*5/$NUMERO-7))
			echo -e "\e[1;36m$LOGNAME o resutado que você chegou foi: \e[1;33m $RESULTADO \e[1;36m!"
			echo ""
		else
			echo "$LOGNAME você não digitou número par, tente novamente."
			exit 0
		fi
		;;
	N)
	  clear
		echo ""
		echo "$(printf '\360\237\232\252\n') Tudo bem $LOGNAME, até mais! Volte quando quiser. $(printf '\360\237\220\261\n') "
		echo ""
		;;
	*)
	  clear
		echo ""
		echo -e "\e[1;36mOpção inválida: \e[1;33mdigite 'S' para Sim ou 'N' para Não"
		echo ""
		;;
	esac
