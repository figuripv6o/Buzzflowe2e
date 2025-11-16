#!/usr/bin/env bash
set -e

echo "🐝 BuzzFlow Auto-Push — FDF Certified"
echo "🔧 Checking Git status…"

git add -A

msg="BuzzFlow Auto Push — $(date '+%Y-%m-%d %H:%M:%S')"
if [ ! -z "$1" ]; then
  msg="$1"
fi

echo "📝 Commit message: $msg"
git commit -m "$msg" || echo "⚠️ Nothing to commit."

echo "⬆️ Pushing to origin/main…"
git push origin main

echo "✅ BuzzFlow Auto Push Complete — You’re Live."