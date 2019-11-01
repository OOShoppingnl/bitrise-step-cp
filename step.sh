#!/bin/bash
set -e
set -x

File_Name=$(basename "$cp_to")
Dir_Path="${cp_to/$File_Name}"
Dir_Path=${Dir_Path%?}

if [[ -d "$Dir_Path" ]]; then
  echo "$Dir_Path exists"
  else
  mkdir -p $Dir_Path
  echo "Created directory: $Dir_Path"
fi

cp $cp_from $cp_to

envman add --key NEW_LOCATION --value $cp_to
