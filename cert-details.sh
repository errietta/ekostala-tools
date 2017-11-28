#!/bin/sh
#https://serverfault.com/questions/661978/displaying-a-remote-ssl-certificate-details-using-cli-tools
PORT=${2:-443}
echo | openssl s_client -showcerts -servername $1 -connect $1:$PORT 2>/dev/null | openssl x509 -inform pem -noout -text
