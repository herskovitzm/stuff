
Import-Module ActiveDirectory 


Get-ADUser -Filter * -SearchBase "dc=lsqdomain,dc=com" -Properties * | 

Select-Object @{Label = "Display Name";Expression = {$_.DisplayName}}, 
                  @{Label = "Logon Name";Expression = {$_.sAMAccountName}}, 
                  @{Label = "Full address";Expression = {$_.StreetAddress}}, 
                  @{Label = "Post Code";Expression = {$_.PostalCode}}, 
                  @{Label = "Country/Region";Expression = {if (($_.Country -eq 'GB')  ) {'United Kingdom'} Else {''}}}, 
                  @{Label = "Job Title";Expression = {$_.Title}}, 
                  @{Label = "Company";Expression = {$_.Company}}, 
                  @{Label = "Description";Expression = {$_.Description}}, 
                  @{Label = "Department";Expression = {$_.Department}}, 
                  @{Label = "Office";Expression = {$_.OfficeName}}, 
                  @{Label = "Phone";Expression = {$_.telephoneNumber}}, 
                  @{Label = "Email";Expression = {$_.Mail}}, 
                  @{Label = "Manager";Expression = {%{(Get-AdUser $_.Manager -Properties DisplayName).DisplayName}}}, 
                  @{Label = "Account Status";Expression = {if (($_.Enabled -eq 'TRUE')  ) {'Enabled'} Else {'Disabled'}}}, # the 'if statement# replaces $_.Enabled 
                  @{Label = "Last LogOn Date";Expression = {$_.lastlogondate}} |  


Export-Csv "c:\temp\AD-Export.csv"