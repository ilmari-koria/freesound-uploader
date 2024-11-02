#!/bin/bash
BASEX="./basex/bin/basex"
BASEX_HTTP_START="./basex/bin/basexhttp"
BASEX_HTTP_STOP="./basex/bin/basexhttpstop"
XQUERY="./upload-to-freesound.xq"
$BASEX_HTTP_START
echo "running"
$BASEX $XQUERY
echo "done"
$BASEX_HTTP_STOP
