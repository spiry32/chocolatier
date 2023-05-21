@echo off

:mm
echo Welcome! What would you like to do? [If is the first time using this app, you HAVE TO run the third and fourth option!]
echo [1] Install programs
echo [2] Uninstall programs
echo [3] Install Dependencies
echo [4] Install other essential packages
set /p option=Enter your option: 

if "%option%"=="1" (goto install)
if "%option%"=="2" (goto uninstall) 
if "%option%"=="3" (goto instDep)
if "%option%"=="4" (goto instEss)
echo Invalid option. Please select a valid option.
goto exit

:install
    echo Which application would you like to install?
    echo [1] Vivaldi
    echo [2] Vim
    set /p installOption=Enter your option:
    if "%installOption%"=="1" (
        echo Installing Vivaldi...
        scoop install extras/vivaldi
        goto exit
    )
    if "%installOption%"=="2" (
        echo Installing Vim...
        scoop install vim
        goto exit
    ) 
    echo Invalid option. Please select a valid option.
    goto exit

:uninstall
    echo Which application would you like to uninstall?
    echo [1] Vivaldi
    echo [2] Vim
    set /p uninstallOption=Enter your option:
    if "%uninstallOption%"=="1" (
        echo Uninstalling Vivaldi...
        scoop uninstall vivaldi
        goto exit
    )
    if "%uninstallOption%"=="2" (
        echo Uninstalling Vim...
        scoop uninstall vim
        goto exit
    )
    echo Invalid option. Please select a valid option.
    goto exit

:instDep
    powershell -Command "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser; irm get.scoop.sh | iex"
    echo "Scoop has been installed."
    echo "[WARNING!] To be able to install the applications,YOU MUST RESTART THE POWERSHEEL"
    goto exit

:instEss
    powershell -Command "scoop install git;scoop bucket add main;scoop bucket add extras"
    echo packages installed successfully
    goto exit

:exit

