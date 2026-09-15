@echo off
setlocal
cd /d "%~dp0"
where latexmk >nul 2>nul
if errorlevel 1 (
  echo [ERROR] latexmk not found. Please install/update TeX Live or MiKTeX.
  pause
  exit /b 1
)
latexmk -xelatex -interaction=nonstopmode -halt-on-error main.tex
if errorlevel 1 (
  echo [ERROR] Compilation failed. Check main.log.
  pause
  exit /b 1
)
echo [OK] main.pdf generated successfully.
pause
