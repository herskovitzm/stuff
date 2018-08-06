
# Disable SMBv1 on Windows Server 2012 R2 & 2016


# DETECT

Get-WindowsFeature FS-SMB1

# DISABLE

Disable-WindowsOptionalFeature -Online -FeatureName smb1protocol


# ENABLE

# Enable-WindowsOptionalFeature -Online -FeatureName smb1protocol