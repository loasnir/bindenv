#! /bin/sh
set -e

TEST_ENV=${TEST_ENV:=`ruby -v | sed -r 's/^.+([0-9]+\.[0-9]+\.[0-9]+).+$/\1/'`}

function checkResult() {
  if [ $1 = $2 ]; then
    echo [$TEST_ENV] ok >> result
  else
    echo [$TEST_ENV] error >> result
  fi
  sort -o result result
}

checkResult 'hoge' `export HOGE=hoge && echo '${HOGE}' | bindenv`
checkResult 'hoge' `export HOGE=hoge && echo '$HOGE' | bindenv`
