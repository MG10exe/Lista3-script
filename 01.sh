#!/bin/bash

arq=$1

read -p "Digite o nome do arquivo a ser substituído os números pelo caractere X: " arq
sarq=$arq-num_X

tr '0-9' 'X' < $arq > $sarq && echo 'caracteres substituídos com sucesso..'
