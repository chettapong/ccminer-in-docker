#!/bin/bash

/home/miner/ccminer/ccminer --algo=$ALGO --url="$MINING_POOL" --userpass="$USER_NAME:$PASSWORD" --api-bind=port="$API_IP:$API_PORT"
