<div align="center">

# Metamagic

[English](README.md)

![license MIT](https://img.shields.io/badge/license-MIT-green)
![Claude Code](https://img.shields.io/badge/Claude%20Code-command-D97757?logo=anthropic&logoColor=white)
![platform](https://img.shields.io/badge/platform-macOS%20%7C%20Linux%20%7C%20Windows-blue)
![shell Bash](https://img.shields.io/badge/shell-Bash-4EAA25?logo=gnubash&logoColor=white)

一個用於快速優化 prompt 的 Claude Code 指令，具備系統化分析和剪貼簿整合功能。

> _在 D&D 中，Metamagic 讓術士能夠改變法術。在這裡，它改變你的 prompt。_

</div>

## 功能特色

- **系統化分析** - 從 7 個維度評估 prompt：清晰度、完整性、結構性、輸出格式、範例、思考引導、角色定義
- **剪貼簿整合** - 自動讀取和寫入剪貼簿（macOS、Linux、Windows/WSL）
- **迭代式改進** - 可繼續對話進一步調整結果

## 安裝

```bash
git clone https://github.com/Clementtang/metamagic.git ~/metamagic
~/metamagic/install.sh
```

用 `install.sh --link` 可改成 symlink 而非複製，這樣改 repo 會即時生效。

## 使用方式

```bash
# 優化剪貼簿內容
/op

# 優化指定文字
/op "你的 prompt"

# 優化檔案內容
/op --file path/to/prompt.md
```

## 輸出格式

```
## Prompt 分析

### 原始 Prompt
[顯示原始內容]

### 發現的問題
1. [問題類型] [問題描述]
2. [建議類型] [建議內容]

### 優化版本

[優化後的 prompt]
```

優化後的 prompt 會自動複製到剪貼簿。

## 迭代改進

取得結果後，你可以繼續對話調整：

- 「再精簡一點」
- 「加入更多範例」
- 「用英文重寫」
- 「針對 Claude 優化」

## 提示：搭配剪貼簿管理工具

每次優化結果也會印在對話裡，所以剪貼簿被覆寫並不會遺失內容——但每次 `/op`（與每次迭代調整）都會取代剪貼簿上的東西。如果你經常迭代、想同時保留多個版本，可搭配剪貼簿管理工具：

- **macOS** — [Maccy](https://maccy.app)（免費開源）或 [Paste](https://pasteapp.io)
- **Windows** — 內建剪貼簿歷史（`Win` + `V`）
- **Linux** — [CopyQ](https://hluk.github.io/CopyQ/)

## 系統需求

- [Claude Code](https://claude.ai/code)
- 對應作業系統的剪貼簿工具：macOS 內建 `pbcopy`/`pbpaste`、Linux 用 `wl-copy`/`wl-paste` 或 `xclip`、Windows/WSL 用 `clip`/`Get-Clipboard`

## 授權

MIT
