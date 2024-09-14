#!/usr/bin/env bash

SOURCE_DIR="/home/syw/Desktop/24Fall/ACR/website/"
TARGET_DIR="/home/syw/Desktop/24Fall/ACR/Notes/"

find "$SOURCE_DIR" -maxdepth 1 -type f -name 'Lecture*.md' | while read -r file; do
    cp -f "$file" "$TARGET_DIR"
done

find "$SOURCE_DIR" -maxdepth 1 -type f -name 'template.md' | while read -r file; do
    cp -f "$file" "$TARGET_DIR"
done

echo "笔记同步完成"
