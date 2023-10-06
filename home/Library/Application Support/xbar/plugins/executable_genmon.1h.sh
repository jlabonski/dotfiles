#!/usr/bin/env bash

HOST=genmon.northwales.zoso.org

set -euo pipefail

# Metadata allows your plugin to show up in the app, and website.
#
#  <xbar.title>Genmon Check</xbar.title>
#  <xbar.version>v1.0</xbar.version>

set +e

# Ping! Reduce errors due to network funkiness. It is outside, after all.
#  -c 10	10 times
#  -i 5		5 second interval
#  -o		exit success when recieveing one response
ping "${HOST}" -c 10 -i 5 -o -q >/dev/null 2>&1

RETVAL="$?"
set -e

if (( RETVAL == 0 ))
then
	echo "✓" 
else
	echo "❌ genmon"
fi





