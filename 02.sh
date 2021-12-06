#!/bin/bash

arq=$1

read -p "Digite o nome do arquivo a ser removido as linhas vazias: " arq
sarq=$arq-sem_linhas_vazia

tr -s '\n' < $arq > $sarq && echo 'linhas removidas com sucesso..'
