@echo off
setlocal
set /p <nul="Building 'Dracula.igtheme'..."
where /q 7z.exe && (
    7z.exe a "Dracula.zip" "Dracula" >nul
) || (
    powershell.exe -command "&{Compress-Archive .\Dracula .\Dracula.zip -Force}"
)
move /y "Dracula.zip" "Dracula.igtheme"
echo. done.
endlocal
exit /b
