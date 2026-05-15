#!/usr/bin/env bash
set -euo pipefail
TARGET="${CLAUDE_HOME:-$HOME/.claude}/skills/break-risk-intel"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
mkdir -p "$(dirname "$TARGET")"
rm -rf "$TARGET"
mkdir -p "$TARGET"
(
  cd "$SOURCE_DIR"
  tar --exclude='.git' --exclude='__pycache__' --exclude='*.pyc' --exclude='*.zip' -cf - .
) | (
  cd "$TARGET"
  tar -xf -
)
echo "Installed BREAK Risk Intel Skill to $TARGET"
echo "Restart or reload Claude Code to discover it."
