Get-WmiObject -Class SoftwareLicensingProduct -Filter "Name LIKE '%Windows%' AND PartialProductKey <> null" 
Get-WmiObject -Class SoftwareLicensingProduct
Get-CimInstance -ClassName SoftwareLicensingProduct -Filter "Name LIKE '%Windows%' AND PartialProductKey <> null" 


Get-CimInstance -Class SoftwareLicensingProduct | Get-Member
$license = Get-CimInstance -ClassName SoftwareLicensingProduct -Filter "Name LIKE '%Windows%' AND PartialProductKey <> null" | Select-Object Name
Get-CimInstance -ClassName SoftwareLicensingProduct -Filter "Name LIKE '%Windows%' AND PartialProductKey <> null" | Select-Object Name,LicenseStatus
$license = Get-CimInstance -ClassName SoftwareLicensingProduct -Filter "Name LIKE '%Windows%' AND PartialProductKey <> null"
$license

$license | Select-Object Name
 
$valueToReturn="LicenseStatus"
switch ($valueToReturn) {
    "Description" { $license | Select-Object Description }
    "LicenseStatus" { $license | Select-Object LicenseStatus }
    Default { $license | Select-Object Name }
}

$license.LicenseStatus

$valueToReturn=""
switch($valueToReturn)
{
    "FreeSpace" { Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" | Select-Object FreeSpace }
    "TotalSpace" { Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" | Select-Object Size }
    Default { Get-CimInstance Win32_LogicalDisk -Filter "DeviceId='$letter'" | Select-Object @{Name="Used";Expression={($PSItem.Size)-($PSItem.FreeSpace )}} }
}

