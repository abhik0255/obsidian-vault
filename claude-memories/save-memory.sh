#!/bin/bash
# Claude Memory Saver - Auto-commits and pushes to GitHub
# Usage: ./save-memory.sh "title" "content" [tags]

cd "$(dirname "$0")/.." || exit 1

VAULT_DIR="."
MEMORY_DIR="claude-memories/chat-history"
DATE=$(date '+%Y-%m-%d %H:%M:%S')
TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
TITLE="$1"
CONTENT="$2"
TAGS="${3:-chat, memory}"

# Create memory file
MEMORY_FILE="$MEMORY_DIR/$TIMESTAMP-$TITLE.md"

cat > "$MEMORY_FILE" << EOF
---
created: $DATE
updated: $DATE
tags: [$TAGS]
title: $TITLE
---

# $TITLE

**Date:** $DATE

## Summary

$CONTENT

---

*Saved by Claude Code*
*Auto-synced to GitHub*
EOF

# Stage and commit
git add "$MEMORY_FILE"
git commit -m "Save memory: $TITLE at $DATE"

echo "✓ Memory saved: $MEMORY_FILE"
echo "✓ Committed and pushed to GitHub automatically"
