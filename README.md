# Metamagic

[繁體中文](README.zh-TW.md)

A Claude Code command for quickly optimizing prompts with systematic analysis and clipboard integration.

> _In D&D, Metamagic allows sorcerers to alter spells. Here, it alters your prompts._

## Features

- **Systematic Analysis** - Evaluates prompts across 5 dimensions: clarity, completeness, structure, examples, and role definition
- **Clipboard Integration** - Reads from and writes to clipboard automatically (macOS)
- **Iterative Refinement** - Continue the conversation to further adjust results

## Installation

```bash
git clone https://github.com/Clementtang/metamagic.git ~/metamagic
~/metamagic/install.sh
```

## Usage

```bash
# Optimize clipboard content
/optimize

# Optimize specific text
/optimize "your prompt here"

# Optimize from file
/optimize --file path/to/prompt.md
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

## Templates

Reference templates are available in `templates/`:

- `clarity.md` - Focus on clarity improvements
- `specific.md` - Add specificity and constraints
- `examples.md` - Add input/output examples
- `structure.md` - Improve organization

## Requirements

- [Claude Code](https://claude.ai/code)
- macOS (for clipboard integration via `pbcopy`/`pbpaste`)

## License

MIT
