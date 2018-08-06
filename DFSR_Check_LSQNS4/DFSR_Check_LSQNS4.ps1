#Creates Random File Names

$rdname1 = [System.IO.Path]::GetRandomFileName()
$rdname2 = [System.IO.Path]::GetRandomFileName()
$rdname3 = [System.IO.Path]::GetRandomFileName()

#File Location for test file


$testfile1 = ( '\\srv-arch1\LSQNS4\public\Department Shares\IT\Private\DFS_Test_Folder\' + $rdname1 )
$testfile2 = ( '\\vsrv-fs6\LSQNS4\public\Department Shares\IT\Private\DFS_Test_Folder\' + $rdname2 )
$testfile3 = ( '\\vsrv-atlfs6\LSQNS4\public\Department Shares\IT\Private\DFS_Test_Folder\' + $rdname3 ) 

#File Location Only

$testlocation1 = ( '\\vsrv-fs6\LSQNS4\public\Department Shares\IT\Private\DFS_Test_Folder\' + $rdname1 )
$testlocation2 = ( '\\vsrv-atlfs6\LSQNS4\public\Department Shares\IT\Private\DFS_Test_Folder\' + $rdname1 )

$testlocation3 = ( '\\vsrv-atlfs6\LSQNS4\public\Department Shares\IT\Private\DFS_Test_Folder\' + $rdname2 )
$testlocation4 = ( '\\srv-arch1\LSQNS4\public\Department Shares\IT\Private\DFS_Test_Folder\' + $rdname2 )

$testlocation5 = ( '\\vsrv-fs6\LSQNS4\public\Department Shares\IT\Private\DFS_Test_Folder\' + $rdname3 )
$testlocation6 = ( '\\srv-arch1\LSQNS4\public\Department Shares\IT\Private\DFS_Test_Folder\' + $rdname3 )

#Generates Random file name and contents/size

fsutil file createnew $testfile1 62914560

#Pauses script

Start-Sleep -s 10

#Tests presence of file in location

$results1 = Test-Path $testlocation1
$results2 = Test-Path $testlocation2

#If file is located in other DFSR file paths, file is deleted, otherwise email is sent out

IF ($results1 -eq $true -AND $results2 -eq $true)
     {Remove-Item $testfile1}

ELSE
     {Send-MailMessage -From "Alert LSQNS4 DFSR <LSQNS1_DFS@lsq.com>" -To "DFSR_Check_LSQNS4 <lsqns4@lsqfunding.pagerduty.com>, Infrastructure <productioninfrastructure@lsq.com>" -Subject "DFS Replication Alert for LSQNS4" -Body "You are receiving this email due to a potential issue with replication initializing from \\srv-arch1\LSNQNS4\ Please take the appropriate measures to address." -SmtpServer "vsrv-smtp1.lsqdomain.com"}

#Creates Random File Names

fsutil file createnew $testfile2 62914560

#Pauses script

Start-Sleep -s 20

#Tests presence of file in location

$results3 = Test-Path $testlocation3
$results4 = Test-Path $testlocation4

#If file is located in other DFSR file paths, file is deleted, otherwise email is sent out

IF ($results3 -eq $true -AND $results4 -eq $true)
     {Remove-Item $testfile2}

ELSE
     {Send-MailMessage -From "Alert LSQNS4 DFSR <LSQNS1_DFS@lsq.com>" -To "DFSR_Check_LSQNS4 <lsqns4@lsqfunding.pagerduty.com>, Infrastructure <productioninfrastructure@lsq.com>" -Subject "DFS Replication Alert for LSQNS4" -Body "You are receiving this email due to a potential issue with replication initializing from \\vsrv-fs6\LSQNS4\ Please take the appropriate measures to address." -SmtpServer "vsrv-smtp1.lsqdomain.com"}

#Creates Random File Names

fsutil file createnew $testfile3 62914560

#Pauses script

Start-Sleep -s 20

#Tests presence of file in location

$results5 = Test-Path $testlocation5
$results6 = Test-Path $testlocation6

#If file is located in other DFSR file paths, file is deleted, otherwise email is sent out

IF ($results5 -eq $true -AND $results6 -eq $true)
     {Remove-Item $testfile3}

ELSE
    {Send-MailMessage -From "Alert LSQNS4 DFSR <LSQNS1_DFS@lsq.com>" -To "DFSR_Check_LSQNS4 <lsqns4@lsqfunding.pagerduty.com>, Infrastructure <productioninfrastructure@lsq.com>" -Subject "DFS Replication Alert for LSQNS4" -Body "You are receiving this email due to a potential issue with replication initializing from \\vsrv-atlfs6\LSQNS4\ Please take the appropriate measures to address." -SmtpServer "vsrv-smtp1.lsqdomain.com"}