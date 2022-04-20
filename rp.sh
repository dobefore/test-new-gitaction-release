#!/bin/sh
realpath() {
  OURPWD=$PWD
  cd "$(dirname "$1")"
  LINK=$(readlink "$(basename "$1")")
  while [ "$LINK" ]; do
    cd "$(dirname "$LINK")"
    LINK=$(readlink "$(basename "$1")")
  done
  REALPATH="$PWD/$(basename "$1")"
  cd "$OURPWD"
  echo  "$REALPATH"
}
#realpath "$@"
PROJECT_ROOT=$(realpath)   # or result=`myfunc`

# PROJECT_ROOT="$(realpath "$(dirname "$(dirname "$0")")")"
ANKI_PATCH_FOLDER="$PROJECT_ROOT./anki_patch/"
echo $ANKI_PATCH_FOLDER
# cd $ANKI_PATCH_FOLDER
# #https://qa.icopy.site/questions/3572030/bash-script-absolute-path-with-os-x


