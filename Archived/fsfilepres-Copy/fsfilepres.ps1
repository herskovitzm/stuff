$Results = Test-Path "\\vsrv-atlfs5\apps\CashPosting\CashPostingData\4_Images_to_FS\*.*"

If ($Results -eq $false)
    {Write-EventLog –LogName Application –Source “Factorsoft File Presence” –EntryType Warning –EventID 187 –Message “A file has been noted in the location path \\vsrv-atlfs5\apps\CashPosting\CashPostingData\4_Images_to_FS\ after 11:59 PM EST. As a result, an alert will be sent to Nagios for response.”}

    
    
