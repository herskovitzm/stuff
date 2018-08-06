get-childitem c:\users\ -include Cadence.lnk -recurse | foreach ($_) {remove-item $_.fullname}
get-childitem c:\users\ -include factors.rdp -recurse | foreach ($_) {remove-item $_.fullname}