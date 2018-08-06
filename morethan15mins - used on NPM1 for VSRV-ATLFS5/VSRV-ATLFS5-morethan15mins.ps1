$path = "\\vsrv-atlfs5\Apps\SmartFax\Incoming\*\*.*"

$lastWrite = (get-item $path).LastWriteTime

$timespan = new-timespan -minutes 15

if (((get-date) - $lastWrite) -gt $timespan) 
    {Send-MailMessage -From "VSRV-ATLFS5<FileAlert@lsq.com>" -To "VSRV-ATLFS5 <atlfs5@lsqfunding.pagerduty.com>, DL-Production-Infrastructure <productioninfrastructure@lsq.com>" -Subject "Schedules may have stopped. Please look into this." -Body "It appears that a file has remained in one of the folders under path \\vsrv-atlfs5\Apps\SmartFax\Incoming\*\*.* for over 15 minutes. The schedules may have stopped. Please look into this." -SmtpServer "vsrv-smtp1.lsqdomain.com"}

