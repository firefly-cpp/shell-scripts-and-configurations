#!/usr/bin/env bash
IP='XXX.X.XXX.X'
USERNAME='user'
FILE='text.txt'
DESTINATION='/home/user/'

magenta='\033[0;35m'
clear='\033[0m'

echo -e "${magenta}Starting transfer${clear}"
sftp $USERNAME@$IP <<EOF
cd $DESTINATION
put $FILE
EOF
