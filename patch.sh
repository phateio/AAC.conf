#!/bin/bash

TEMPFILE=$(mktemp).patch
/bin/cp konsolas/config.yml config.yml.bak
git diff config.yml.bak | sed 's/.bak//g' > ${TEMPFILE}
echo git apply --3way ${TEMPFILE}
