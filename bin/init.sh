#!/bin/bash

set -eu

current_uname=$(uname)
if [ ${current_uname} != "Darwin" ]; then
    echo "Not macOS."
    exit 1
fi

: "intall xcode-select"
if [ -z "$(command -v xcode-select)" ]; then
    xcode-select --install >/dev/null
fi

: "intall brew"
if [ -z "$(command -v brew)" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" >/dev/null
    brew update
    brew upgrade
    brew -v
fi
