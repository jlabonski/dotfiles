#!/bin/bash

set -euo pipefail

brew bundle dump --file=- | grep -vx '^vscode .*' > BrewFile
