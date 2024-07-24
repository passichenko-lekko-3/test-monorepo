#!/bin/bash
cd ${GITHUB_WORKSPACE}
# 000... sha means no previous commit
if [[ "$1" != "0000000000000000000000000000000000000000" ]]; then
  git reset --hard && git clean -fd
  git checkout $1
  cd ${PROJECT_PATH}
  if ! lekko conf; then
    # lekko conf failed - assume this means .lekko did not exist at base
    echo "Current change introduced Lekko"
    echo "new_lekko=true" >> $GITHUB_OUTPUT
  fi
  cd ${GITHUB_WORKSPACE}
else
  echo "Base points to null commit"
  echo "new_lekko=true" >> $GITHUB_OUTPUT
fi
git checkout $2
