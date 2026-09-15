#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
echo "[OK] main.pdf generated successfully."
