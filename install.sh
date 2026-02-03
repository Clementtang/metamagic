#!/bin/bash
# Metamagic 安裝腳本
# 將專案檔案複製到 Claude Code commands 目錄

set -e

SOURCE="$HOME/metamagic/op.md"
TARGET="$HOME/.claude/commands/op.md"

if [ ! -f "$SOURCE" ]; then
    echo "錯誤：找不到 $SOURCE"
    exit 1
fi

cp "$SOURCE" "$TARGET"
echo "✅ 已安裝 Metamagic 到 $TARGET"
