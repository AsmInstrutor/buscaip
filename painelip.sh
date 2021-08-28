#!/bin/bash

printf "\nBem vindos ao painel de buscas IPV4 feito\npor Jankees Softwares!\n\n"

read -p "Digite o ip: " ip

printf "\nBuscando por: $ip \n\n"
sleep 1

printf "Hostname: "
curl -s https://ipinfo.io/$ip/json | jq -r '.hostname'
printf "Cidade: "
curl -s https://ipinfo.io/$ip/json | jq -r '.city'
printf "País: "
curl -s https://ipinfo.io/$ip/json | jq -r '.country'
printf "Região: "
curl -s https://ipinfo.io/$ip/json | jq -r '.region'
printf "Organização: "
curl -s https://ipinfo.io/$ip/json | jq -r '.org'

