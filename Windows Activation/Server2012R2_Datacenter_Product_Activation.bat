@echo off

slmgr.vbs /ipk W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9

TIMEOUT /T 1

slmgr.vbs /skms vsrv-kms1:1688

TIMEOUT /T 1

slmgr.vbs /ato


