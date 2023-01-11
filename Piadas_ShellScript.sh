#!/bin/bash

##############################################
#                                            #
#       Piadas rápidas em sheel script       #
#                                            #
#       Caio Henrique Novelletto 01/2023     #
#                                            #
##############################################

clear
#########################1##########################
echo -e "Porque os fantasmas são péssimos para contar mentiras ?"
sleep 1
echo -e "Possiveis respostas A,B ou C: \n"
echo -e "A) Porque fantasma não existe!"
echo -e "B) Porque são transparentes."
echo -e "C) Porque são assustadores. \n"
echo -e "Digite sua resposta:  ?"  $(printf '\342\217\261\n') ; read RESPOSTA1

while [[ $RESPOSTA1 != B ]]
do
    echo -e "Reposta errada ou opção inválida, tente novamente!" $(printf '\360\237\222\243\n')
    echo -e "Digite uma nova resposta:  ?" ; read RESPOSTA1
done
    echo -e "Muito bem, acertou! \n "
    echo -e "Pŕoxima. \n"
    sleep 2
    clear

#########################2##########################
echo -e "Você sabe por que a plantinha não foi atendida no hospital ?"
sleep 1
echo -e "Possiveis respostas A,B ou C: \n"
echo -e "A) Porque não tinha médico"
echo -e "B) Plantas não vão ao hospítal"
echo -e "C) Porque só tinha médico de plantão. \n"
echo -e "Digite sua resposta:  ?"  $(printf '\342\217\261\n') ; read RESPOSTA2

while [[ $RESPOSTA2 != C ]]
do
    echo -e "Reposta errada ou opção inválida, tente novamente!" $(printf '\360\237\222\243\n')
    echo -e "Digite uma nova resposta:  ?" ; read RESPOSTA2
done
    echo -e "Muito bem, acertou! \n "
    echo -e "Pŕoxima. \n"
    sleep 2
    clear

#########################3##########################

echo -e "Você está se sentindo pra baixo, sozinho(a), ninguém liga para você ?"
sleep 1
echo -e "Possiveis respostas A,B ou C: \n"
echo -e "A) Sim"
echo -e "B) Não"
echo -e "C) Experimente atrasar um boleto. \n"
echo -e "Digite sua resposta:  ?"  $(printf '\342\217\261\n') ; read RESPOSTA3

while [[ $RESPOSTA3 != C ]]
do
    echo -e "Reposta errada ou opção inválida, tente novamente!" $(printf '\360\237\222\243\n')
    echo -e "Digite uma nova resposta:  ?" ; read RESPOSTA3
done
    echo -e "kkkkkkk, acertou! \n "
    echo -e "Depois dessa, chega, fuiii!  \n"
    sleep 3
    clear

exit 0