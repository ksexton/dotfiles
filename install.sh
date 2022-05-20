#!/bin/sh

set -e # -e: exit on error

# Check if xcode command line tools are installed
if [ "$(xcode-select -p > /dev/null 2>&1; echo $?)" -eq 0 ]; then
    echo "🎉 Command line tools found!";
else
    echo "❌ Command line tools not found, after installation please rerun the installation script.";
    xcode-select --install
    exit 1;
fi

echo "👍 Initial checks look good!";

# sh -c "$(curl -fsLS chezmoi.io/get)" -- -b $HOME/.local/bin init --apply ksexton
