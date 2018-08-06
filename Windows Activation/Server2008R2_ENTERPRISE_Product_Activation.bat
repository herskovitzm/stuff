@echo off

slmgr.vbs /ipk 489J6-VHDMP-X63PK-3K798-CPX3Y

TIMEOUT /T 1

slmgr.vbs /skms vsrv-kms1:1688

TIMEOUT /T 1

slmgr.vbs /ato


