

# DISABLE SMBv1 Server Script


# DETECT

Get-WindowsOptionalFeature –Online –FeatureName SMB1Protocol

# DISABLE

Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol


# ENABLE

# Enable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol