
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
		echo "Legal,Vamos continuar...$(printf '\360\237\221\223\n')"
		echo ""
		sleep 1s
		echo -e "Pense em um número par, entre 0 e 200 [Enter]"
		read -n5 key
		echo ""
		echo -e "Agora que pensou, guarde seu número digitando aqui: " $(printf '\360\237\222\276\n') ; read NUMERO
		echo ""

		#VERIFICAR SE O NUMERO DIGITADO É IMPAR
		while [[ $NUMERO =~ ^[0-9]*[13579]$ ]]
		do
			echo -e "Você digitou um número impar, tente novamente: " $(printf '\360\237\222\276\n') ; read NUMERO
			echo ""
			sleep 1
		done
			echo -e "Multiplique o número escolhido por 2 [Enter]"
			read -n5 key
			echo ""
			echo -e "Agora multiplique o resultado por 5 [Enter]"
			read -n5 key
			echo ""
			echo -e "Pegue o resultado e divida pelo primeiro número escolhido [Enter]"
			read -n5 key
			echo ""
			echo -e "Então subtraia 7 do resultado [Enter]"
			read -n5 key
			echo ""
			RESULTADO=$(($NUMERO*2*5/$NUMERO-7))
			echo -e "\e[1;36m$LOGNAME o resutado que você chegou foi: \e[1;33m $RESULTADO \e[1;36m!"
			echo ""
			exit 0
		;;
	N)
	  clear
		echo ""
		echo "$(printf '\360\237\232\252\n') Está bem $LOGNAME, até mais! Volte quando quiser. "
		echo ""
		;;
	*)
	  clear
		echo ""
		echo -e "\e[1;36mOpção inválida, \e[1;33mdigite 'S' para Sim ou 'N' para Não"
		echo ""
		;;
	esac
