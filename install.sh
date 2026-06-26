#!/bin/bash
# Metamagic 安裝腳本
# 將 op.md 安裝到 Claude Code commands 目錄
#
# 用法：
#   ./install.sh          複製 op.md（預設）
#   ./install.sh --link   建立 symlink（開發用，改 repo 即時生效）

set -e

# 從 script 自身位置推導來源，clone 到任何路徑都能用
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE="$SCRIPT_DIR/op.md"
TARGET_DIR="$HOME/.claude/commands"
TARGET="$TARGET_DIR/op.md"

if [ ! -f "$SOURCE" ]; then
    echo "錯誤：找不到 $SOURCE"
    exit 1
fi

mkdir -p "$TARGET_DIR"

# 先移除既有目標，避免從 symlink 切回 cp 時因「來源即目標」而失敗
rm -f "$TARGET"

if [ "$1" = "--link" ]; then
    ln -sf "$SOURCE" "$TARGET"
    echo "✅ 已將 Metamagic symlink 到 $TARGET → $SOURCE"
else
    cp "$SOURCE" "$TARGET"
    echo "✅ 已安裝 Metamagic 到 $TARGET"
fi
