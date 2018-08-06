$store = New-Object System.Security.Cryptography.X509Certificates.X509Store("My","LocalMachine")
$store.Open("MaxAllowed")
$certs = $store.certificates | ?{$_.Issuer -eq "CN=srv-101, DC=lsqdomain, DC=com"}
$newcerts = $store.certificates | ?{$_.Issuer -eq "CN=LSQRootCA, DC=lsqdomain, DC=com"}
If ($newcerts -ne $NULL) {$certs | %{$store.remove($_)}} Else {$store.close()}
