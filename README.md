# 𓁹‿𓁹

> **Disclaimer:** This repository is for **educational and research purposes only**. The tools collected here are meant to document and understand how certain software mechanisms work. I do **not** use any of these tools, and you **should not** use them either. Using these scripts may violate the terms of service of the software involved and could be illegal in your jurisdiction. The author takes no responsibility for any misuse.

---

## What is this?

A curated collection of scripts and tools that exploit gray-area or outright illegal techniques. The goal is purely academic: to understand how these mechanisms work under the hood, not to put them into practice.

---

## Tools

### 1. `windows-batch-tools/jetbrains-freetrial-refresh.bat`

**What it does (hypothetically):**
Resets the trial period of any JetBrains IDE (WebStorm, IntelliJ, CLion, Rider, GoLand, PhpStorm, ReSharper, PyCharm) without wiping editor customizations, settings, or installed plugins.

**How it works:**
- Deletes the `eval` folder and `other.xml` license reference file inside each IDE's config directory under `%USERPROFILE%`.
- Removes JetBrains identity files (`PermanentUserId`, `PermanentDeviceId`, `crl`, `bl`) from `%APPDATA%\JetBrains\`.
- Deletes PyCharm-specific license files (`pycharm.key`, `plugin_PCWMP.license`) — folder name (`PyCharm2026.1`) may need to be updated to match your installed version.
- Deletes the `HKEY_CURRENT_USER\Software\JavaSoft` registry key.

**Hypothetical usage:**
```bat
jetbrains-freetrial-refresh.bat
```
No arguments required. Run as a standard user (no admin privileges needed).

> **Note:** The script still works if the PyCharm-specific lines are removed, though additional manual steps may be required after the reset.

---

### 2. `windows-batch-tools/windows-activator.bat`

**What it does (hypothetically):**
Activates various Microsoft products for free — including Windows itself and Microsoft Office — by downloading and running the [Microsoft Activation Scripts (MAS)](https://github.com/massgravel/Microsoft-Activation-Scripts) project via a PowerShell one-liner.

**How it works:**
- Invokes PowerShell to fetch and immediately execute the remote activation script hosted at `get.activated.win`.
- The actual activation logic lives entirely in that external service/script, not in this batch file.

**Hypothetical usage:**
```bat
windows-activator.bat
```
No arguments required. May require running as Administrator depending on the activation method chosen by the remote script.

> **Warning — external dependency:** This script is a thin wrapper around a third-party service. If `get.activated.win` goes offline or the MAS project is discontinued, this script will stop working entirely. The batch file itself has no fallback logic.

---

*More tools coming soon.*
