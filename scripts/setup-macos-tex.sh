#!/usr/bin/env bash
# Run once in Terminal (password required for installer + tlmgr).
set -euo pipefail

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install from https://brew.sh then re-run this script."
  exit 1
fi

echo "Installing BasicTeX (macOS will ask for your password)..."
brew install --cask basictex

eval "$(/usr/libexec/path_helper)"
export PATH="/Library/TeX/texbin:$PATH"

if ! command -v tlmgr >/dev/null 2>&1; then
  echo "tlmgr not on PATH. Open a new terminal or run: eval \"\$(/usr/libexec/path_helper)\""
  exit 1
fi

echo "Updating tlmgr and installing Beamer tooling (sudo password again)..."
sudo tlmgr update --self
sudo tlmgr install latexmk beamer collection-fontsrecommended collection-latexextra

echo "Done. Verify with: /Library/TeX/texbin/pdflatex --version"
