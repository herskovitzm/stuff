@echo off

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\.NETFramework\v2.0.50727" /v SchUseStrongCrypto /t REG_DWORD /d 1 /f

TIMEOUT /T 2

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\.NETFramework\v2.0.50727" /v SchUseStrongCrypto /t REG_DWORD /d 1 /f

TIMEOUT /T 2