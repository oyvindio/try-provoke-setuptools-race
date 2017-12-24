#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

cd "$(dirname $0)"
rm -rf .eggs .cache

VIRTUALENV_PATH="$(mktemp -d)"
virtualenv "$VIRTUALENV_PATH"

set +u # activate fails with nounset because $PS1 is not exported in non-interactive shells
. $VIRTUALENV_PATH/bin/activate
set -u

python setup.py test --addopts '-n auto --capture=no -vvv'

function cleanup() {
    deactivate
    rm -rf "$VIRTUALENV_PATH"
}

trap cleanup EXIT
