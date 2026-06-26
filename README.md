<div align="center">

# Metamagic

[繁體中文](README.zh-TW.md)

![license MIT](https://img.shields.io/badge/license-MIT-green)
![Claude Code](https://img.shields.io/badge/Claude%20Code-command-D97757?logo=anthropic&logoColor=white)
![platform](https://img.shields.io/badge/platform-macOS%20%7C%20Linux%20%7C%20Windows-blue)
![shell Bash](https://img.shields.io/badge/shell-Bash-4EAA25?logo=gnubash&logoColor=white)

A Claude Code command for quickly optimizing prompts with systematic analysis and clipboard integration.

> _In D&D, Metamagic allows sorcerers to alter spells. Here, it alters your prompts._

</div>

## Features

- **Systematic Analysis** - Evaluates prompts across 7 dimensions: clarity, completeness, structure, output format, examples, chain-of-thought, and role definition
- **Clipboard Integration** - Reads from and writes to clipboard automatically (macOS, Linux, Windows/WSL)
- **Iterative Refinement** - Continue the conversation to further adjust results

## Installation

```bash
git clone https://github.com/Clementtang/metamagic.git ~/metamagic
~/metamagic/install.sh
```

Use `install.sh --link` to symlink instead of copy, so edits to the repo take effect immediately.

## Usage

```bash
# Optimize clipboard content
/op

# Optimize specific text
/op "your prompt here"

# Optimize from file
/op --file path/to/prompt.md
```

## Output Format

```
## Prompt Analysis

### Original Prompt
[shows original content]

### Issues Found
1. [issue type] [description]
2. [suggestion type] [recommendation]

### Optimized Version

[improved prompt]
```

The optimized prompt is automatically copied to your clipboard.

## Iterative Refinement

After receiving results, you can continue refining:

- "Make it shorter"
- "Add more examples"
- "Rewrite in English"
- "Optimize for Claude"

## Tip: Pair With a Clipboard Manager

Every result is also printed in the conversation, so an overwritten clipboard never loses content — but each `/op` (and each refinement) replaces what's on your clipboard. If you iterate often and want to keep several versions around, pair Metamagic with a clipboard manager:

- **macOS** — [Maccy](https://maccy.app) (free, open source) or [Paste](https://pasteapp.io)
- **Windows** — built-in clipboard history (`Win` + `V`)
- **Linux** — [CopyQ](https://hluk.github.io/CopyQ/)

## Requirements

- [Claude Code](https://claude.ai/code)
- A clipboard tool for your OS: macOS `pbcopy`/`pbpaste` (built in), Linux `wl-copy`/`wl-paste` or `xclip`, Windows/WSL `clip`/`Get-Clipboard`

## License

MIT
