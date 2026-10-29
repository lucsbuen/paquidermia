@echo off
rem Abre o laboratório por um servidor local (precisa de Python). Ctrl+C na janela do servidor encerra.
cd /d "%~dp0"
start "Paquidermia - servidor local" cmd /c python -m http.server 8765
timeout /t 2 >nul
start "" "http://localhost:8765/?diretor"
