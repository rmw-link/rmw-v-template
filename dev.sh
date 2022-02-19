#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

NAME=$(cat v.mod|grep name|awk -F\' '{print $2}')
SH="v watch run $NAME.v"

exec $SH \
  -i '.git' \
  -i 'bin' \
  -c -s --before "printf \"\e[90m❯ ${SH}\e[0m\n\""
