#!/bin/bash

set -e

echo "Applying NetHunter patches..."

for p in patches/*.patch
do
    git apply "$p"
done

echo "Done."
