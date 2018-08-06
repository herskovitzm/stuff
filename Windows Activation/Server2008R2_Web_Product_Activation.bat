@echo off

slmgr.vbs /ipk 6TPJF-RBVHG-WBW2R-86QPH-6RTM4

TIMEOUT /T 1

slmgr.vbs /skms vsrv-kms1:1688

TIMEOUT /T 1

slmgr.vbs /ato


