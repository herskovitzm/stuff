$Stop = New-Object -ComObject wscript.shell;
$Stop.AppActivate('Check Image Importer (Treasury Mgmt) - FSPROD')
Sleep 2
$Stop.SendKeys('%P')

$Close = New-Object -ComObject wscript.shell;
$Close.AppActivate('Check Image Importer (Treasury Mgmt) - FSPROD')
Sleep 2
$Close.SendKeys('%X')

New-PSDrive -Name "Z" -PSProvider "FileSystem" -Root "\\lsqdomain.com\lsqns2\Apps\FactorSoft\FSCOMMON\"

Z:\fsChkImporter.exe

$Start = New-Object -ComObject wscript.shell;
$Start.AppActivate('Check Image Importer (Treasury Mgmt) - FSPROD')
Sleep 2
$Start.SendKeys('%S')


