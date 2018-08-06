$Results = Test-Path "\\vsrv-atlfs5\apps\CashPosting\CashPostingData\4_Images_to_FS\*.*"

If ($Results -eq $true)
    {Send-MailMessage -From "VSRV-ATLFS5 <FileAlertt@lsq.com>" -To "PagerDuty ATLFS5 <atlfs5@lsqfunding.pagerduty.com>, Infrastructure <productioninfrastructure@lsq.com>" -Subject "File detected in VSRV-ATLFS5 Image to FS Folder" -Body "You are receiving this alert because a file has been detected in the folder \\vsrv-atlfs5\apps\CashPosting\CashPostingData\4_Images_to_FS\ after 11:59 PM EST. Please look into this." -SmtpServer "vsrv-smtp1.lsqdomain.com"}

    
    
