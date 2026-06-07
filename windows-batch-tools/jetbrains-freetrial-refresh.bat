REM This script resets the trial period of any JetBrains IDE without losing
REM editor customization settings (including installed plugins).

REM Delete the eval folder of each JetBrains IDE and the related other.xml file that holds the license reference
REM ------------------------------------------------------------------------------------------------------------

for %%I in ("WebStorm", "IntelliJ", "CLion", "Rider", "GoLand", "PhpStorm", "Resharper", "PyCharm") do (
    for /d %%a in ("%USERPROFILE%\.%%I*") do (
        rd /s /q "%%a/config/eval"
        del /q "%%a\config\options\other.xml"
    )
)

REM Delete the registry key and all necessary files in the JetBrains folder
REM NB: For a cleaner refresh, I also included deletion of some files specific to the "PyCharm2026.1" folder.
REM     You may need to update the PyCharm folder name if you have a different version installed.
REM     The script works without deleting these files too, but you might need a few extra steps after the reset.
REM ------------------------------------------------------------------------------------------------------------

del /q "%APPDATA%\JetBrains\PermanentUserId"
del /q "%APPDATA%\JetBrains\PermanentDeviceId"
del /q "%APPDATA%\JetBrains\crl"
del /q "%APPDATA%\JetBrains\bl"
del /q "%APPDATA%\JetBrains\PyCharm2026.1\pycharm.key"
del /q "%APPDATA%\JetBrains\PyCharm2026.1\plugin_PCWMP.license"
del /q "%APPDATA%\JetBrains\PyCharm2026.1\other.xml"

reg delete "HKEY_CURRENT_USER\Software\JavaSoft" /f