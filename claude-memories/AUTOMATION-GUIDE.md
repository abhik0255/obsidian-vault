---
created: 2026-08-02
tags: [automation, script]
alias: Claude Memory Save Script
---

# Claude Memory Save Script

This script saves conversations to Obsidian and automatically syncs to GitHub.

## How It Works

1. Save memory to Obsidian vault
2. Commit the change
3. Auto-push to GitHub via git hook

## Usage

```bash
./save-memory.sh "memory-title" "memory-content"
```

## Configuration

- Vault location: `~/Obsidian`
- Memory folder: `~/Obsidian/claude-memories`
- Sync hook: `post-commit` (auto-push enabled)
