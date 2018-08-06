#Ask for username of termination

$secureString = convertto-securestring =098Q/SqD]a5 -asplaintext -force

$username = Read-Host -Prompt 'Input user name to change password'

#Change password

Set-ADAccountPassword -Identity $username -NewPassword $secureString -Reset


