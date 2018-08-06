add-pssnapin Microsoft.Exchange.Management.PowerShell.E2010
$csvfile="EmailMBX-Usage-{0:yyyyMMdd}" -f (Get-Date)
$filename = "\\srv-it1\scratch\scripts\Email Reports\$csvfile.CSV"
Get-MailboxStatistics -Database "LSQ MBDBEX1" | Select DisplayName, TotalItemSize | Sort-Object TotalItemSize -Descending | export-csv $filename -NoTypeInformation
Send-MailMessage -To mherskovitz@lsq.com -From "emailReport@lsq.com" -SMTPServer "smtp.lsqdomain.com" -Subject "Daily Email Size Report" -Body "Please See Attached" -Attachments $filename