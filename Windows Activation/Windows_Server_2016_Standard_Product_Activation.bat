@ECHO OFF 

slmgr.vbs /ipk WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY

TIMEOUT /T 1

slmgr.vbs /skms vsrv-kms1:1688

TIMEOUT /T 1

slmgr.vbs /ato


