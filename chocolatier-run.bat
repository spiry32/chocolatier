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
    echo ------------------Browsers------------------
    echo [1] Vivaldi
    echo [2] Brave Browser
    echo [3] Opera
    echo [4] OperaGX
    echo [5] Google Chrome
    echo [6] Firefox
    echo [7] Tor Browser
    echo -----------------Messaging-----------------
    echo [8] Discord
    echo [9] Skype
    echo [10] Zoom
    set /p installOption=Enter your option:
    if "%installOption%"=="1" (
        echo Installing Vivaldi...
        scoop install extras/vivaldi
        goto exit
    )
    if "%installOption%"=="2" (
        echo Installing Brave...
        scoop install extras/brave
        goto exit
    ) 
    if "%installOption%"=="3" (
        echo Installing Opera...
        scoop install extras/opera
        goto exit
    )
    if "%installOption%"=="4" (
        echo Installing OperaGX...
        scoop install extras/opera-gx
        goto exit
    )
    if "%installOption%"=="5" (
        echo Installing Google Chrome...
        scoop install extras/googlechrome
        goto exit
    )
    if "%installOption%"=="6" (
        echo Installing Firefox...
        scoop install extras/firefox
        goto exit
    )
    if "%installOption%"=="7" (
        echo Installing Tor Browser...
        scoop install main/tor
        goto exit
    )
    if "%installOption%"=="8" (
        echo Installing Discord...
        scoop install extras/discord
        goto exit
    )
    if "%installOption%"=="9" (
        echo Installing Skype...
        scoop install extras/skype
        goto exit
    )
    if "%installOption%"=="10" (
        echo Installing Tor Zoom...
        scoop install extras/zoom
        goto exit
    )

    echo Invalid option. Please select a valid option.
    goto exit

:uninstall
    echo Which application would you like to uninstall?
    echo [1] Microsoft Edge
    echo [2] Vivaldi
    echo [3] Vim
    set /p uninstallOption=Enter your option:
    if "%uninstallOption%"=="1" (
        echo Uninstalling Edge...
        :remove_microsoft_edge
        goto exit
    )
    if "%uninstallOption%"=="2" (
        echo Uninstalling Vivaldi...
        scoop uninstall vivaldi
        goto exit
    )
    if "%uninstallOption%"=="3" (
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
    

