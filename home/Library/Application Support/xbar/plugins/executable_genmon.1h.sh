#!/usr/bin/env bash

HOST=genmon.northwales.zoso.org

set -euo pipefail

# Metadata allows your plugin to show up in the app, and website.
#
#  <xbar.title>Genmon Check</xbar.title>
#  <xbar.version>v1.0</xbar.version>

set +e
ping -c 1 "${HOST}" -o -t 5 -q >/dev/null 2>&1
RETVAL="$?"
set -e

if (( RETVAL == 0 ))
then
	echo "✓" 
else
	echo "❌ genmon"
fi





