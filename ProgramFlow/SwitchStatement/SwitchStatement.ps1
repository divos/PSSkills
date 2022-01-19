Set-Variable -Name "LabPath" -Value "Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\"
$letter='c:'
# When blank will execute Default line. 
$valueToReturn=""
switch($valueToReturn)
{
    "FreeSpace" { Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" | Select-Object FreeSpace }
    "TotalSpace" { Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" | Select-Object Size }
    Default { Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" | Select-Object @{Name="Used";Expression={($PSItem.Size)-($PSItem.FreeSpace )}} }
}
