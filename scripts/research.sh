#!/bin/bash
# Daily research agent for the public eval knowledge base
# Runs at 6am Pacific via Windows Task Scheduler

set -uo pipefail

REPO_DIR="/c/Users/serenaxie/eval-knowledge-base"
LOG_FILE="$REPO_DIR/scripts/research.log"
PROMPT_FILE="$REPO_DIR/scripts/research-prompt.md"
TODAY=$(date +%Y-%m-%d)

echo "[$TODAY $(date +%H:%M:%S)] Starting public research run..." >> "$LOG_FILE"

cd "$REPO_DIR"

# Pull latest before researching
git pull --rebase origin main 2>> "$LOG_FILE" || true

# Run Claude Code in non-interactive mode, piping prompt via stdin
# Note: Claude CLI may segfault on cleanup (exit 139) on Windows — this is harmless
cat "$PROMPT_FILE" | claude --print \
  --dangerously-skip-permissions \
  --allowedTools "WebSearch WebFetch Read Write Edit Glob Grep Bash(git:*)" \
  --model sonnet \
  --max-budget-usd 1.00 \
  2>> "$LOG_FILE" || true

echo "[$TODAY $(date +%H:%M:%S)] Public research run complete." >> "$LOG_FILE"
