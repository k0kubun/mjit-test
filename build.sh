#!/bin/bash -eux

if [ -n "$(git diff)" ]; then
  echo "Diff found. Aborting."
  exit 1
fi

git pull origin master
git commit --allow-empty -m "Build: $(LANG=en TZ=UTC date)

committed by build.sh"
git push origin master
