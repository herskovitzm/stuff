$Path = "C:\Windows\ccmcache"
$Daysback = "-30"

$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path -Recurse -Include *.msi, *.exe, *.cab | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item 