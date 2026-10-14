#!/usr/bin/env bash
set -euo pipefail

OWNER="Mert-Oezdemir"
REPO="claude-code-5-skills-tr"
FULL_NAME="${OWNER}/${REPO}"
cd "$(dirname "$0")/.."

command -v gh >/dev/null || { echo "GitHub CLI gerekli: https://cli.github.com/" >&2; exit 1; }
command -v git >/dev/null || { echo "git gerekli" >&2; exit 1; }
gh auth status >/dev/null 2>&1 || { echo "Önce gh auth login çalıştırın" >&2; exit 1; }

if ! gh repo view "$FULL_NAME" >/dev/null 2>&1; then
  gh repo create "$FULL_NAME" --public --description "Claude Code için bağımsız Türkçe skill rehberi"
fi

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git init -b main
fi
git add README.md LICENSE THIRD_PARTY.md SECURITY.md CONTRIBUTING.md PUBLISHING.md .gitignore scripts/publish.sh
if ! git diff --cached --quiet; then
  git commit -m "docs: update Turkish Claude Code skills guide"
fi
git remote get-url origin >/dev/null 2>&1 || git remote add origin "https://github.com/${FULL_NAME}.git"
git push -u origin HEAD:main
echo "Published: https://github.com/${FULL_NAME}"
