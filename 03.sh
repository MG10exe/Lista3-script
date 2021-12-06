#!/bin/bash

ip=$1
read -p "Digite um endereço IP: " ip

if ! echo "$ip" | grep -E '\b((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.|$)){4}\b' > /dev/null; then
	echo "IP inválido"
	exit
fi

echo "$ip" > ip
tr '.' '\n' < ip > ip-sem-ponto
isp="$(cat ip-sem-ponto)"

for i in $(seq 1 4)
do
        echo "Octeto $i:" >> arq1
done

for i in $isp
do
        echo "$i em binário" >> arq2
done

for i in $isp
do
        echo "obase=2; $i" | bc >> arq3
done

paste arq1 arq2 arq3 > arq4
cat arq4 | tr '\t' ' '

rm ip ip-sem-ponto arq1 arq2 arq3 arq4
