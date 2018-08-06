@echo off

slmgr.vbs /ipk 48HP8-DN98B-MYWDG-T2DCC-8W83P

TIMEOUT /T 1

slmgr.vbs /skms vsrv-kms1:1688

TIMEOUT /T 1

slmgr.vbs /ato


