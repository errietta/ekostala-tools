#!/bin/sh
PORT=${2:-443}
printf "Expiry details for $1 port $PORT:\n"
sh $(dirname "$0")/cert-details.sh $1 $PORT | grep -A 2 'Validity'
