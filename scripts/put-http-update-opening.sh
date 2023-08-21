#!/bin/sh

#vars
url="http://localhost:8080/api/v1/opening"
verb="PUT"
headers="Content-Type: application/json"
data='{"role":"teste2", "company":"Best Company2","location":"New York2","remote":false,"link":"vaga2.com/vaga2","salary":6666666},'

fill_param=$1

# Validation
if [ $# -eq 0 ]; then
  echo "Error: deve conter o fill_param referente ao id"
  exit 1
fi

if [ -z "$fill_param" ]; then
  echo "Error: o parametro não pode ser vazio "
  exit 1
fi

#REQUIRE
echo "Fazendo a requisição $verb para a $url com o parametro id $fill_param"

curl -X "$verb"  -H "$headers" -d "$data " "$url"?id="$fill_param"
