Set-Variable -Name "LabPath" -Value "Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\"


Get-WinEvent -MaxEvents 10
Get-Service | Format-Wide
Get-Service | FW
Get-Service | Format-Wide -Property ServiceName
Get-Service | Format-Wide -Property DisplayName
Get-Service | Format-Wide -Col 5
Get-Service | Format-Wide -AutoSize

Get-Service | Format-List
Get-Service | FL
Get-Service | Format-List -Property *
Get-Service | Format-List Name, Status

Get-Service | Format-Table 
Get-Service | ft
Get-Service | Format-Table -Property *
Get-Service | Format-Table Name,Status,DisplayName
Get-Service | Format-Table Name,Status,DisplayName,ServiceType
Get-Service | Format-Table Name,Status,DisplayName,ServiceType -AutoSize
Get-Service | Format-Table Name,Status,DisplayName,ServiceType -AutoSize -Wrap

Get-ChildItem C:\$LabPath | Format-Table Name, @{ n="Size in KB";e={$PSItem.Length/1KB}}
Get-ChildItem C:\$LabPath | Format-Table Name, @{ n="Size in KB";e={$PSItem.Length/1KB}; FormatString="N2"}
Get-ChildItem C:\$LabPath | Format-Table Name, @{ n="Size in KB";e={$PSItem.Length/1KB}; FormatString="N2"} -AutoSize

Get-Service | Format-Table
Get-Service | Sort-Object Status | Format-Table

# This fails, wrong order
Get-Service | Format-Table | Sort-Object Status
Get-Service | Sort-Object Status | Format-Table | Get-Member
Get-Service | Sort-Object Status | Select-Object Status, Name,DisplayName | Get-Member

Get-Service | Sort-Object Status | Format-Table
Get-Service | Format-Table -GroupBy Status
Get-Service | Sort-Object Status | Format-Table -GroupBy Status

Get-Service | Group-Object Status

Get-Service | Select-Object Staus,Name,DisplayName | ConvertTo-Html | Out-File C:\$LabPath\service.html
Invoke-Item C:\$LabPath\service.html
Get-Service | Out-Host
Get-Service | Out-GridView
Get-Service | Out-Printer


Get-Printer
Get-Printer | Format-Wide

Get-ChildItem C:\$LabPath -Recurse | Group-Object PSIsContainer

Get-WmiObject
Get-WMIObject -Class Win32_Desktop
Get-CimInstance -ClassName Win32_Desktop | Format-Table -Property Name
Get-CimInstance -ClassName Win32_Desktop | Format-Wide -Column 3 | Format-Table -Property Name |Out-GridView

