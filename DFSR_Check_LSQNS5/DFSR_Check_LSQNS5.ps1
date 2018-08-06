#Creates Random File Names

$rdname1 = [System.IO.Path]::GetRandomFileName()
$rdname2 = [System.IO.Path]::GetRandomFileName()

#File Location for test file

$testfile1 = ( '\\vsrv-fs-atlap1\lsqns5\DFSR_Test_Folder\' + $rdname1 )
$testfile2 = ( '\\vsrv-fs-atlap2\lsqns5\DFSR_Test_Folder\' + $rdname2 )

#File Location Only

$testlocation1 = ( '\\vsrv-fs-atlap1\lsqns5\DFSR_Test_Folder\' + $rdname1 )
$testlocation2 = ( '\\vsrv-fs-atlap2\lsqns5\DFSR_Test_Folder\' + $rdname2 )


#Generates Random file name and contents/size

fsutil file createnew $testfile1 62914560

#Pauses script

Start-Sleep -s 20

#Tests presence of file in location

$results1 = Test-Path $testlocation1

#If file is located in other DFSR file paths, file is deleted, otherwise email is sent out

IF ($results1 -eq $true)
     {Remove-Item $testfile1}

ELSE
     {Send-MailMessage -From "Alert LSQNS5 DFSR <LSQNS5_DFS@lsq.com>" -To "DFSR_Check_LSQNS5 <lsqns5@lsqfunding.pagerduty.com>, Infrastructure <productioninfrastructure@lsq.com>" -Subject "DFS Replication Alert for LSQNS5" -Body "You are receiving this email due to a potential issue with replication initializing from \\vsrv-fs-atlap1\LSQNS5\ Please take the appropriate measures to address." -SmtpServer "vsrv-smtp1.lsqdomain.com"}

#Creates Random File Names

fsutil file createnew $testfile2 62914560

#Pauses script

Start-Sleep -s 20

#Tests presence of file in location

$results2 = Test-Path $testlocation2

#If file is located in other DFSR file paths, file is deleted, otherwise email is sent out

IF ($results2 -eq $true)
     {Remove-Item $testfile2}

ELSE
     {Send-MailMessage -From "Alert LSQNS5 DFSR <LSQNS5_DFS@lsq.com>" -To "DFSR_Check_LSQNS5 <lsqns5@lsqfunding.pagerduty.com>, Infrastructure <productioninfrastructure@lsq.com>" -Subject "DFS Replication Alert for LSQNS5" -Body "You are receiving this email due to a potential issue with replication initializing from \\vsrv-fs-atlap2\LSQNS5\ Please take the appropriate measures to address." -SmtpServer "vsrv-smtp1.lsqdomain.com"}

