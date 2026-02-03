# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [1.0.1] - 2025-02-02

### Added

- MIT LICENSE file

### Removed

- Unused template files (clarity.md, specific.md, examples.md, structure.md)

### Changed

- Simplified project structure

## [1.0.0] - 2025-01-28

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
