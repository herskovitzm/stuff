@ECHO OFF 

slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43

TIMEOUT /T 1

slmgr.vbs /skms vsrv-kms1:1688

TIMEOUT /T 1

slmgr.vbs /ato


