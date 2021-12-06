#!/bin/bash

ls -l > arqs
opc=$1

case $opc in
	"a") echo -e "Listando apenas os diretórios:\n " && cat arqs | awk '/^d/ { print $9 }' ;;
	"b") echo -e "Listando apenas os arquivos executáveis:\n " && ls -l | grep '^-..x' >> exe && cat exe | awk ' { print $9}' ;;
	"c") echo -e "Listando apenas os links simbólicos:\n " && cat arqs | awk '/^l/ { print $9 }' ;;
	*) echo "Nenhuma" ;;
esac

rm arqs exe &> /dev/null
