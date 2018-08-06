@echo off

slmgr.vbs /ipk YC6KT-GKW9T-YTKYR-T4X34-R7VHC

TIMEOUT /T 1

slmgr.vbs /skms vsrv-kms1:1688

TIMEOUT /T 1

slmgr.vbs /ato


