#!/bin/bash
set -e
SCRIPT_DIR=$(cd $(dirname $0); pwd)

function checkResult() {
    echo $1 eq $2 ?
  if [ $1 = $2 ]; then
    echo ok
  else
    echo error
    exit 1
  fi
}

checkResult 'hoge' `export HOGE=hoge && echo '${HOGE}' | ${SCRIPT_DIR}/../bindenv`
checkResult 'hoge' `export HOGE=hoge && echo '$HOGE' | ${SCRIPT_DIR}/../bindenv`
