# Metamagic

一個用於快速優化 prompt 的 Claude Code 指令，具備系統化分析和剪貼簿整合功能。

> _在 D&D 中，Metamagic 讓術士能夠改變法術。在這裡，它改變你的 prompt。_

## 功能特色

- **系統化分析** - 從 5 個維度評估 prompt：清晰度、完整性、結構性、範例、角色定義
- **剪貼簿整合** - 自動讀取和寫入剪貼簿（macOS）
- **迭代式改進** - 可繼續對話進一步調整結果

## 安裝

```bash
git clone https://github.com/Clementtang/metamagic.git ~/metamagic
~/metamagic/install.sh
```

## 使用方式

```bash
# 優化剪貼簿內容
/optimize

# 優化指定文字
/optimize "你的 prompt"

# 優化檔案內容
/optimize --file path/to/prompt.md
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

## 系統需求

- [Claude Code](https://claude.ai/code)
- macOS（剪貼簿整合需要 `pbcopy`/`pbpaste`）

## 授權

MIT
