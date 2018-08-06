@echo off

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 0 /f

TIMEOUT /T 1

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3 /f

TIMEOUT /T 1

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Virtualization" /v MinVmVersionForCpuBasedMitigations /t REG_SZ /d "1.0" /f

TIMEOUT /T 1