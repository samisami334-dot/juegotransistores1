; NSIS script — launcher_transistores.nsi
; Compilar con makensis.exe
!define APP_NAME "Transistores Launcher"
OutFile "Transistores_Launcher_Setup.exe"
InstallDir "$DESKTOP\Transistores_Launcher"
ShowInstDetails show
RequestExecutionLevel user

Section "Install"
  SetOutPath "$INSTDIR"
  File "Transistores 1 (5).html"
  File "index_twine_launcher.html"
  File "launch_story.bat"
  ; Create a shortcut on Desktop
  CreateShortCut "$DESKTOP\Transistores - Abrir.lnk" "$INSTDIR\index_twine_launcher.html"
SectionEnd

Section "Uninstall"
  Delete "$INSTDIR\Transistores 1 (5).html"
  Delete "$INSTDIR\index_twine_launcher.html"
  Delete "$INSTDIR\launch_story.bat"
  RMDir "$INSTDIR"
  Delete "$DESKTOP\Transistores - Abrir.lnk"
SectionEnd
