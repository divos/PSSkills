Set-Variable -Name "LabPath" -Value "Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\"

$letter='c:'

########
# Deprecated command has been replaced with Get-CimInstance
# Get-WmiObject
# Wmi is Windows Management Interface, has been around for years. It is based on Common Interface Model, or CMI.
# CIM is OSS but has no remote management function. 
# WMI is not firewall friendly. WINRM is the new standard, CIM uses WINRM. 
# Primarily this is a more secure method of achieving the same thing.
########

Get-CimInstance -ClassName Win32_logicaldisk
Get-CimInstance Win32_LogicalDisk
Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='c:'"
Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" 
Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" | Get-Member
Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" | Select-Object Size,FreeSpace,@{n="Used";e={$PSItem.Size-$PSItem.Freespace}}

