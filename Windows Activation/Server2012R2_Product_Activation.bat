@echo off

slmgr.vbs /ipk D2N9P-3P6X9-2R39C-7RTCD-MDVJX

TIMEOUT /T 1

slmgr.vbs /skms vsrv-kms1:1688

TIMEOUT /T 1

slmgr.vbs /ato


