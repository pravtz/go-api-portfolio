#!/bin/sh

#vars
url="http://localhost:8080/api/v1/opening"
verb="POST"
headers="Content-Type: application/json"
data='{"role":"teste", "company":"Best Company","location":"New York","remote":true,"link":"vaga.com/vaga","salary":555555},'

#REQUIRE
echo "Fazendo a requisição $verb para a $url"

curl -X "$verb"  -H "$headers" -d "$data " "$url"
