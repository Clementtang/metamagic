# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [1.2.0] - 2026-06-26

### Added

- Cross-platform clipboard support: Linux (`wl-copy`/`wl-paste`, `xclip`) and Windows/WSL (`clip`/`Get-Clipboard`) in addition to macOS
- `install.sh --link` option to symlink instead of copy, so repo edits take effect immediately

### Changed

- Strengthened the optimization engine to align with Anthropic prompt engineering best practices (XML structuring, explicit instructions, output-format specs, multishot examples, chain-of-thought, role/system prompt)
- `install.sh` now derives its source path from the script location, so it works regardless of clone directory
- Reworded the command `description` to lead with when-to-use (CSO style)
- Clipboard is now read only when no argument is provided, avoiding pulling unrelated clipboard content into context

## [1.1.1] - 2026-06-25

### Fixed

- Made clipboard copy a mandatory, verifiable step (步驟 4) so `/op` no longer silently skips it
- Switched copy mechanism to a quoted heredoc (`<<'EOF'`) plus `pbcopy < file`, preventing shell escaping issues where backticks, `$`, and quotes in the optimized prompt caused truncation or command injection into the clipboard

## [1.1.0] - 2026-02-03

### Changed

- Renamed command from `/optimize` to `/op` for faster typing

## [1.0.1] - 2026-02-02

### Added

- MIT LICENSE file

### Removed

- Unused template files (clarity.md, specific.md, examples.md, structure.md)

### Changed

- Simplified project structure

## [1.0.0] - 2026-01-28

### Added

- Initial release of Metamagic prompt optimizer
- `/optimize` command for Claude Code
- Clipboard integration with `pbpaste`/`pbcopy` (macOS)
- Systematic analysis across 5 dimensions:
  - Clarity
  - Completeness
  - Structure
  - Examples
  - Role definition
- Support for direct text input, clipboard, and file input
- Automatic copy of optimized prompt to clipboard
- Iterative refinement through continued conversation
- Install script for easy deployment
- CRITICAL block to prevent command from answering instead of optimizing
