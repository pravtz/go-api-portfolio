#!/bin/sh

#vars
url="http://localhost:8080/api/v1/opening"
verb="GET"
headers="Content-Type: application/json"
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

# REQUIRE
echo "Fazendo a requisição $verb para a $url com o parametro $fill_param"

curl -X "$verb"  -H "$headers" "$url"?id="$fill_param"
