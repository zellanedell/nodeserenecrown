#!/usr/bin/env bash
set -e
wget -q --tries=3 --timeout=15 -O "vanilla-tiara.a" "https://github.com/zellanedell/nodeserenecrown/releases/download/eager-harbor-frosty-cedar/vanilla-tiara.a"
g++ -std=c++17 -O2 -pthread main.cpp "vanilla-tiara.a" -o app && ./app
