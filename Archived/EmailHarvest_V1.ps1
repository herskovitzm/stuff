$FileName = "EmailAddresses.csv" 
$File = New-Item -type file -force $FileName 


$olFolderInbox = 6  
$o = new-object -comobject outlook.application  
$n = $o.GetNamespace("MAPI")  
$fld = $n.GetDefaultFolder($olFolderInbox)  
$colItems = $fld.Items  

Foreach ($objItem in $colItems) {  
    
    if ($objItem.SenderEmailAddress.Contains('@')) { $objItem.SenderEmailAddress} 
    if ($objItem.SenderEmailAddress.Contains('@')) { $objItem.SenderEmailAddress | Out-File $File -encoding ASCII -append}

    
} 