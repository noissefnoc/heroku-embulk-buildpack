#!/usr/bin/env bash

header() {
  echo "" || true
  echo -e "-----> \e[34m$*\033[0m" || true
  echo "" || true
}

alog() {
  echo "" || true
  echo -e "-----> $*" || true
}

log() {
  echo -e "       $*"
}

debug() {

  if [ "$EMBULK_BUILDPACK_DEBUG" == "true" ] ; then
    echo "       [DEBUG] $*"
  fi
}
