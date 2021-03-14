#!/bin/bash
data=$(sudo docker stats b186b965aea4_php_73 --format "{{.CPUPerc}}" --no-stream)
echo "$data" > "/home/ubuntu/terralab/per.txt"
