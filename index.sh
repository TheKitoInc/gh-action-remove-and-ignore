#!/bin/sh

test -z "${PATH_REMOVE}" && exit 1

PATH_ROOT=$(git rev-parse --show-toplevel 2> /dev/null) || exit 2

PATH_FULL="$PATH_ROOT/$PATH_REMOVE"
test -e "$PATH_FULL"  || exit 0

cd "$PATH_ROOT" && \
git fetch && \
git pull || exit 3

test -f "$PATH_FULL"  && \
(rm -v "$PATH_FULL"  && \
git add "$PATH_REMOVE" && \
git commit -m "Remove file: $PATH_REMOVE" || exit 4)

test -d "$PATH_FULL"  && \
(rm -vr "$PATH_FULL"  && \
git add "$PATH_REMOVE" && \
git commit -m "Remove directory: $PATH_REMOVE" || exit 5)

cat .gitignore | grep "^$PATH_REMOVE$" > /dev/null || echo "$PATH_REMOVE" >> .gitignore && \
git add .gitignore && \
git commit -m "Ignore: $PATH_REMOVE" exit 6

git push || exit 7
