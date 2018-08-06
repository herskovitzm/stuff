#Identify list location

$listofIPs = Get-Content c:\temp\IPList.txt


 
#$listofIPs = "10.100.32.40"  


#Lets create a blank array for the resolved names

$ResultList = @()
 

# Lets resolve each of these addresses

foreach ($ip in $listofIPs)

{

     $result = $null

 

     $currentEAP = $ErrorActionPreference

     $ErrorActionPreference = "silentlycontinue"

    

     #Use the DNS Static .Net class for the reverse lookup

     # details on this method found here: http://msdn.microsoft.com/en-us/library/ms143997.aspx

     $result = [System.Net.Dns]::gethostentry($ip)

    

     $ErrorActionPreference = $currentEAP

    

     If ($Result)

     {

          $Resultlist += [string]$Result.HostName

     }

     Else

     {

          $Resultlist += "$IP – No HostNameFound"

     }

}





#Output file name & location


$ResultList | Out-File c:\temp\output.txt


 