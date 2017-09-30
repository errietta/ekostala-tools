#!/bin/sh
printf "Expiry details for $1:\n"
sh $(dirname "$0")/cert-details.sh $1 | grep -A 2 'Validity'
