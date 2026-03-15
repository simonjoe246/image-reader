#!/bin/bash

echo "building publish package..."
rm -rf build || true
mkdir -p build
cp config.yaml image_reader.py README.md requirements.txt SKILL.md build/

echo "publish package build complete. please check the build/ directory."