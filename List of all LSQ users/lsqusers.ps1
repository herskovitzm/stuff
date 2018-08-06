Get-ADUser -Filter * -SearchBase "OU=Accounting,OU=LSQ,OU=Groups,DC=lsqdomain,DC=com" | FT SamaccountName | Out-File .\results\lsqusers.txt -append

Get-ADUser -Filter * -SearchBase "OU=Executive,OU=LSQ,OU=Groups,DC=lsqdomain,DC=com"  | FT SamaccountName |  Out-File .\results\lsqusers.txt -append

Get-ADUser -Filter * -SearchBase "OU=HR,OU=LSQ,OU=Groups,DC=lsqdomain,DC=com"  | FT SamaccountName |  Out-File .\results\lsqusers.txt -append

Get-ADUser -Filter * -SearchBase "OU=IT,OU=LSQ,OU=Groups,DC=lsqdomain,DC=com"  | FT SamaccountName |  Out-File .\results\lsqusers.txt -append

Get-ADUser -Filter * -SearchBase "OU=Manager,OU=LSQ,OU=Groups,DC=lsqdomain,DC=com"  | FT SamaccountName |  Out-File .\results\lsqusers.txt -append

Get-ADUser -Filter * -SearchBase "OU=Operations,OU=LSQ,OU=Groups,DC=lsqdomain,DC=com"  | FT SamaccountName |  Out-File .\results\lsqusers.txt -append

Get-ADUser -Filter * -SearchBase "OU=Sales,OU=LSQ,OU=Groups,DC=lsqdomain,DC=com"  | FT SamaccountName |  Out-File .\results\lsqusers.txt -append