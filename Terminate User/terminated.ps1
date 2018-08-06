#Ask for username of termination

$secureString = convertto-securestring =098Q/SqD]a5 -asplaintext -force

$username = Read-Host -Prompt 'Input user name to be terminated'

#Disable user

Disable-ADAccount -Identity $username

#Change password

Set-ADAccountPassword -Identity $username -NewPassword $secureString -Reset

#Removes terminated user from all memberships but Domain Users

Get-ADUser $username -Properties MemberOf | Select -Expand MemberOf | %{Remove-ADGroupMember $_ -member $username} -Confirm:$false

#Adds user to the Terminated Group

Add-ADGroupMember -Identity Terminated -Members $username

#Move terminated user to Terminated OU

Get-ADUser $username | Move-ADObject -TargetPath 'OU=Terminated,OU=LSQ,OU=Groups,DC=lsqdomain,DC=com'

#Sets Terminated Group as Primary Group

Set-ADUser $username -Replace @{primaryGroupID="4456"}

#Removes Domain Users Group

Remove-ADGroupMember -Identity "Domain Users" -Members $username -Confirm:$false

#Create a result log file

#Get-Process | Out-File c:\temp\terminated_$username.txt
