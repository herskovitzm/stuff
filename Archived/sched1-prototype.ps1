$path = "\\vdsk-ms5\c$\temp\testtime\"

$lastWrite = (get-item $path).LastWriteTime

$timespan = new-timespan -minutes 15

if (((get-date) - $lastWrite) -gt $timespan) 
    {Send-MailMessage -From "VSRV-SCHED1 <FileAlert@lsq.com>" -To "Michael Herskovitz <mherskovitz@lsq.com>" -Subject "Schedules may have stopped. Please look into this." -Body "It appears that a file has remained in one of the folders under path \\vsrv-sched1\IncomingFiles\Web\Incoming\ for over 15 minutes. The schedules may have stopped. Please look into this." -SmtpServer "vsrv-smtp1.lsqdomain.com"}

