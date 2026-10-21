#!/bin/sh
# @lcfr_hax is the goat
set -eu
cd "$(dirname "$0")"
docker build -t php2shell-mediawiki-lab .
exec docker run --rm -p "127.0.0.1:${1:-19080}:80" php2shell-mediawiki-lab
