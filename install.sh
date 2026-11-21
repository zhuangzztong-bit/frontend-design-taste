#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${HOME}/.gemini/config/plugins/frontend-design-taste"

echo "Installing Frontend Design Taste plugin to: ${TARGET_DIR}"
mkdir -p "${TARGET_DIR}"

for item in plugin.json README.md LICENSE assets rules skills; do
  if [ -e "${REPO_ROOT}/${item}" ]; then
    rm -rf "${TARGET_DIR:?}/${item}"
    cp -R "${REPO_ROOT}/${item}" "${TARGET_DIR}/${item}"
  fi
done

echo "Installed successfully! Open Antigravity -> Customizations to manage it."
