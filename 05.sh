#!/bin/bash

senha=$1

echo "Digite a senha: "
read -s senha

echo "$senha" | grep -E '^[A-Z][0-9a-zA-Z$*&@#]{5,}$' > /dev/null && echo 'senha ok' || echo 'senha inválida'
