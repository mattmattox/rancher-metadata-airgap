#!/bin/bash
echo "Starting webserver..."
apachectl start
echo "ok" > /var/www/src/healthz
if [[ ! -z $HTTP_PROXY ]] || [[ ! -z $http_prozy ]]
then
  echo "Detected proxy settings."
  echo "Starting downloader..."
  while true
  do
    /usr/local/bin/download.sh
    echo "Sleeping..."
    sleep 6h
  done
else
  echo "No proxy settings detected..."
  while true
  do
    sleep 10000
  done
fi
