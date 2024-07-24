#!/bin/bash -e
echo ${GITHUB_WORKSPACE}/${PROJECT_PATH}
cd ${GITHUB_WORKSPACE}/${PROJECT_PATH}
DOT_LEKKO="$(lekko conf)"
echo $DOT_LEKKO
echo "repository="$(echo "$DOT_LEKKO" | jq '.repository' --raw-output)"" >> $GITHUB_OUTPUT
echo "lekko_path="$(echo "$DOT_LEKKO" | jq '.lekkoPath' --raw-output)"" >> $GITHUB_OUTPUT
