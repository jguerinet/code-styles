REM Installs Julein Guerinet's IntelliJ configs into your user configs.
@echo off
echo Installing Julien Guerinet's IntelliJ configs...

setlocal enableDelayedExpansion

for /D %%i in ("%userprofile%"\.AndroidStudio*) do call :copy_config "%%i"
for /D %%i in ("%userprofile%"\.IdeaIC*) do call :copy_config "%%i"
for /D %%i in ("%userprofile%"\.IntelliJIdea*) do call :copy_config "%%i"

echo.
echo Restart IntelliJ and/or AndroidStudio, go to preferences, and apply 'Guerinet' under 'Code Style' and 'Inspections'.
echo You can also apply the 'Guerinet-Windows' or 'Guerinet-Mac' keymap under 'Keymap'. 
exit /b

REM sub function for copy config files
:copy_config
set config_dir=%~1\config
echo Installing to "!config_dir!"
xcopy /s configs "!config_dir!"
echo Done.
echo.
exit /b