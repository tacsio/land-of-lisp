#!/bin/bash -
#===============================================================================
#
#          FILE: start.sh
#
#         USAGE: ./start.sh
#
#   DESCRIPTION:
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (),
#  ORGANIZATION:
#       CREATED: 02/28/2026 14:24
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

docker compose up -d
docker compose exec lisp bash

