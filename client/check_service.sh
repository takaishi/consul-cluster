#!/bin/sh

if [ ! -e /tmp/${1} ]; then
  exec 1
fi

