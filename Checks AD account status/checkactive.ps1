$username = Read-Host -Prompt 'Check Active Status'

Get-ADUser -Identity $username | Select-Object -Property samaccountname,enabled | Out-File C:\temp\checkactive\logs\results.txt


