@echo off

slmgr.vbs /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4

TIMEOUT /T 1

slmgr.vbs /skms vsrv-kms1:1688

TIMEOUT /T 1

slmgr.vbs /ato


