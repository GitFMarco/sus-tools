REM Runs the Microsoft Activation Scripts (MAS) one-liner via PowerShell.
REM This downloads and executes the activation script directly from the internet.
REM Credits: https://github.com/massgravel/Microsoft-Activation-Scripts
REM -------------------------------------------------------------------------------------------------------

powershell -Command "irm https://get.activated.win | iex"