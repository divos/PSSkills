$letter='c:'
$valueToReturn="FreeSpace"

If($valueToReturn -eq "FreeSpace")
{
    Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" | Select-Object FreeSpace
}
ElseIf($valueToReturn -eq "TotalSpace")
{
    Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" | Select-Object Size
}
else 
{
    Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" | Select-Object @{Name="Used";Expression={$PSItem.Size-$PSItem.FreeSpace}}    
}
