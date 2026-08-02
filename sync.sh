#!/bin/bash
# Sync Obsidian Vault to GitHub
# Usage: ./sync.sh [message]

cd "$(dirname "$0")"

# Check if there are changes
if git diff-index --quiet HEAD --; then
    echo "No changes to commit."
    exit 0
fi

# Stage all changes
git add -A

# Create commit with timestamp
if [ -z "$1" ]; then
    COMMIT_MSG="Sync $(date '+%Y-%m-%d %H:%M:%S')"
else
    COMMIT_MSG="$1"
fi

git commit -m "$COMMIT_MSG"

# Push to GitHub
git push origin main

echo "✓ Synced to GitHub at $(date '+%Y-%m-%d %H:%M:%S')"
