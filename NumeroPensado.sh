#!/bin/bash

#############################################################
#                                                           #
# 	Bash adivinha o numero que você pensou                  #
#                                                           #
#  	Brincando e estudando :)                                #
#    Caio H Novelletto  01/2023                             #
#############################################################


clear
echo ""
echo -e "\e[1;36m Oi $LOGNAME, vamos brincar de adivinhar resultados? \e[1;33m(S/N)" ; read ACEITE
echo ""
echo -e "Pense em um número par entre 1 e 40    [Enter]"
read -n5 key
echo ""
echo -e "Com o número que você escolheu, some com + 5   [Enter]"
read -n5 key
echo ""
echo -e "Agora multiplique por 3    [Enter]"
read -n5 key
echo ""
echo -e "Pegue o valor da multiplicação e subtraia por 15   [Enter]"
read -n5 key
echo ""
echo -e "Aqui começa a brincadeira..."
sleep 1
echo -e "Me diga o resultado do seu calculo, que digo o número que você pensou!"
sleep 1
echo ""
echo -e "Basta digitar aqui seu resultado: " ; read RESULTADO
echo ""
echo -e "Pois bem, se o resultado do seu calculo é: $RESULTADO ..."
sleep 1
echo -e "O número que você pensou, só pode ser: $(($RESULTADO/3))"
sleep 1
echo -e "Acertei ? (S/N)" ; read ACERTO

case $ACERTO in
	S)
		clear
		echo -e "Legal né, quer tentar outro número agora? $(printf '\360\237\221\223\n')"
    echo ""
    exit 0
    ;;

  N)
    clear
    echo -e "Você tem certeza disso? vamos tentar outro número então?"
    echo -e "Basta iniciar o script novamente"
    ;;

  *)
    clear
    echo ""
    while [ * -ne S ] && [ * -ne N ] && [ -z ]; do
      echo -e "Opção inválida: Digite "S" para Sim ou "N" para Não"
      echo ""
      echo -e "Acertei ? (S/N)" ; read ACERTO
      echo ""
    done
    ;;
esac
