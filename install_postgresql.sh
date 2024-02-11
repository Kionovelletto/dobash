#!/bin/bash

banner_pg="
██████╗  ██████╗ ███████╗████████╗ ██████╗ ██████╗ ███████╗███████╗ ██████╗ ██╗     
██╔══██╗██╔═══██╗██╔════╝╚══██╔══╝██╔════╝ ██╔══██╗██╔════╝██╔════╝██╔═══██╗██║     
██████╔╝██║   ██║███████╗   ██║   ██║  ███╗██████╔╝█████╗  ███████╗██║   ██║██║     
██╔═══╝ ██║   ██║╚════██║   ██║   ██║   ██║██╔══██╗██╔══╝  ╚════██║██║▄▄ ██║██║     
██║     ╚██████╔╝███████║   ██║   ╚██████╔╝██║  ██║███████╗███████║╚██████╔╝███████╗
╚═╝      ╚═════╝ ╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝ ╚══▀▀═╝ ╚══════╝
"

install_postgresql() {
    local version_pg=$1
    case $version_pg in
        12|13|14|15|16)
            echo "Instalando o PostgreSQL versão $version_pg"
            sudo apt-get update > /dev/null 2>&1
            sudo apt-get install -y postgresql-$version_pg > /dev/null 2>&1
            echo "PostgreSQL versão $version_pg instalado com sucesso! ✅"
            ;;
        *)
            echo "Erro ❌: Versão inválida do PostgreSQL. Por favor, escolha uma das opções disponíveis (12, 13, 14, 15 ou 16)."
            exit 1
            ;;
    esac
}

clear
echo "$banner_pg"
echo " "
echo -e "$USER, bem vindo ao script de instalação do PostgreSQL"
echo -e "Digite a versão do PostgreSQL que deseja instalar (12, 13, 14, 15 ou 16):   "
read version_pg

show_progress() {
    local width=50
    local percent=$1
    local completed=$((width * percent / 100))
    local remaining=$((width - completed))

    local bar=""
    for ((i = 0; i < completed; i++)); do
        bar+="🔹"
    done
    for ((i = 0; i < remaining; i++)); do
        bar+="🔸"
    done

    printf "[%s] %d%%\r" "$bar" "$percent"
}

execute_update() {
    # adicionar comandos abaixo, um processo para cada função
    echo "Adicionando repositório postgreSQL"
    sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' > /dev/null 2>&1
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - > /dev/null 2>&1
    echo "Atualizado os repositórios"
    sudo apt update > /dev/null 2>&1
    echo "Repositórios atualizados ✅"
}

install_pg() {
    echo "Instalando o PostgreSQL de versão $version_pg"
    sudo apt-get -y install postgresql-$version_pg postgresql-client-$version_pg > /dev/null 2>&1
    echo "PostgreSQL $version_pg instalado com sucesso ✅ "
}

# Etapa 1 do bar progress: 
execute_update
show_progress 50

# Etapa 2 do bar progress:
install_pg
show_progress 100

install_postgresql "$version_pg"

clear
echo " 
██████╗  ██████╗ ███╗   ██╗███████╗
██╔══██╗██╔═══██╗████╗  ██║██╔════╝
██║  ██║██║   ██║██╔██╗ ██║█████╗  
██║  ██║██║   ██║██║╚██╗██║██╔══╝  
██████╔╝╚██████╔╝██║ ╚████║███████╗
╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚══════╝
"
