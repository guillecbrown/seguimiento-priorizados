@echo off
rem Copia la interfaz de la app a esta carpeta y la publica en GitHub Pages.
rem Solo viajan index.html y echarts.min.js: los datos se quedan en tu equipo.
setlocal
cd /d "%~dp0"

copy /y "..\version rust\ui\index.html" index.html >nul || goto :error
copy /y "..\version rust\ui\echarts.min.js" echarts.min.js >nul || goto :error

git add -A || goto :error
git diff --cached --quiet
if not errorlevel 1 (
  echo No hay cambios que publicar.
  goto :fin
)
git commit -m "Actualiza la interfaz" || goto :error
git push || goto :error

echo.
echo Publicado. En uno o dos minutos se vera en:
echo https://guillecbrown.github.io/seguimiento-priorizados/
goto :fin

:error
echo.
echo ERROR: no se pudo publicar. Revisa el mensaje de arriba.

:fin
echo.
pause
