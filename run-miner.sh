#!/bin/bash

getApiBind() {
  if [ ! -z "$API_IP" ]; then
    IP=$API_IP
  else
    IP="127.0.0.1"
  fi

  if [ ! -z "$API_PORT" ]; then
    PORT=$API_PORT
  else
    PORT="4068"
  fi

  echo "$IP:$PORT"
}

/home/miner/ccminer/ccminer --algo=$ALGO --url="$MINING_POOL" --userpass="$USER_NAME:$PASSWORD" --api-bind="$(getApiBind)"
