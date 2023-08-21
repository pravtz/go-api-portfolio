#!/bin/sh

#vars
url="http://localhost:8080/api/v1/openings"
verb="GET"
headers="Content-Type: application/json"

#REQUIRE
echo "Fazendo a requisição $verb para a $url"

curl -X "$verb"  -H "$headers"  "$url"
