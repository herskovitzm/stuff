get-childitem c:\windows\ccmcache\ -include *.ini -recurse | foreach ($_) {remove-item $_.fullname}