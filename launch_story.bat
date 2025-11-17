@echo off
REM Lanzador: abre el index_twine_launcher.html con el navegador predeterminado
SET SCRIPT_DIR=%~dp0
START "" "%SCRIPT_DIR%index_twine_launcher.html"
EXIT /B 0
