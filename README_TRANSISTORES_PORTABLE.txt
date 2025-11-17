Paquete portable — Transistores
Contenido:
- Transistores 1 (5).html   (tu export desde Twine)
- index_twine_launcher.html  (launcher optimizado con iframe y botón "Abrir en ventana nueva")
- launch_story.bat           (ejecutable por lotes para abrir el launcher en Windows)
- launcher_transistores.nsi  (script NSIS para crear un .exe autoextraíble que lance el launcher)
- 7z_sfx_config.txt          (config para crear .exe autoextraíble con 7-Zip SFX)
- README_TRANSISTORES_PORTABLE.txt (este archivo)

Instrucciones rápidas:
1) Probar localmente (Windows/Mac/Linux)
   - Descomprimí el ZIP en una carpeta.
   - En Windows: hacer doble click en index_twine_launcher.html o ejecutar launch_story.bat.
   - En macOS / Linux: abrir index_twine_launcher.html con el navegador.

2) Crear un .exe autoextraíble con 7-Zip (requiere 7z.exe y 7zSfx, se genera un EXE que extrae y ejecuta el launcher):
   - Colocar los archivos en una carpeta (por ejemplo: MyTransistores).
   - Desde la carpeta que contiene MyTransistores ejecutar (en Windows PowerShell o CMD) algo como:
     "C:\Program Files\7-Zip\7z.exe" a -t7z MyTransistores.7z MyTransistores\*
     copy /b  "C:\Program Files\7-Zip\7zS.sfx" + 7z_sfx_config.txt + MyTransistores.7z MyTransistores_portable.exe
   - Esto crea MyTransistores_portable.exe (autoextraíble). El archivo sfx config incluido en este ZIP funciona con la sintaxis estándar de 7-Zip SFX.

3) Crear un instalador / EXE con NSIS (requiere NSIS instalado):
   - Abrir "launcher_transistores.nsi" con el editor de NSIS y compilar (MakeNSIS.exe).
   - El script extraerá los archivos y ejecutará index_twine_launcher.html al finalizar.

4) Conversión con herramientas más avanzadas (opcional)
   - Para convertir a un .exe con Chromium embebido (app nativa), usar Electron + electron-packager / electron-builder localmente. Esto requiere Node.js y conocimientos básicos de empaquetado.

Limitaciones de este entorno:
- No puedo compilar un .exe aquí dentro. Te entregué:
  * los archivos listos para usar (index + HTML export),
  * scripts NSIS y 7-Zip SFX para que generes el EXE en tu PC (son de uso local).
Si querés, te doy los pasos exactos para tu sistema (Windows 10/11) y puedo ajustar el script NSIS o el SFX si necesitás comportamientos concretos (icono, carpeta de instalación, ejecución silenciosa).
