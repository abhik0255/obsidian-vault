---
created: 2026-08-02
tags: [setup, obsidian, integration]
alias: Obsidian Memory Setup
---

# Obsidian Memory Integration with Claude Code

This folder (`~/Obsidian/claude-memories/`) is connected to your Claude Code session.

## How It Works

1. **Chat History** - All conversations are saved here for context
2. **Projects** - Project-specific notes and code references
3. **Preferences** - Your settings and preferences

## What Gets Saved

| Content | Location |
|---------|----------|
| Conversations | `chat-history/` |
| Projects | `projects/` |
| Settings | `preferences/` |
| General Notes | `notes/` |

## Using This as Your "Brain"

When you start a new session, Claude will:
1. Read the memory index
2. Load recent sessions
3. Recall your preferences
4. Continue where you left off

## Tips

- Use `[[links]]` to connect related ideas
- Add tags like `#project`, #`tech`, `#preference`
- Keep notes in markdown format

---

**Integration configured at:** 2026-08-02
