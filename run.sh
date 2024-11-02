#!/bin/bash
BASEX="./basex/bin/basex"
XQUERY="./upload-to-freesound.xq"
echo "running"
$BASEX $XQUERY
echo "done"
