@echo off
setlocal
cd /d "%~dp0"
latexmk -c main.tex
