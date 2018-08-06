@echo off
net use U: /delete
net use S: /delete
net use U: \\lsqdomain.com\lsqns1\Users\%username% /PERSISTENT:YES
net use S: \\lsqdomain.com\lsqns4\public /PERSISTENT:YES