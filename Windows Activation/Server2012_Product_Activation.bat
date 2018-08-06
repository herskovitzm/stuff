@echo off

slmgr.vbs /ipk XC9B7-NBPP2-83J2H-RHMBY-92BT4

TIMEOUT /T 1

slmgr.vbs /skms vsrv-kms1:1688

TIMEOUT /T 1

slmgr.vbs /ato


