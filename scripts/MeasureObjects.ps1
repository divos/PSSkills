Get-Service | Out-File C:\Scripts\services.txt
Get-Content C:\scripts\services.txt
Get-Service | Out-GridView 
Get-Service | Get-Member
Get-ChildItem c:\scripts | Get-Member

Get-Service | Sort-Object -Property Name
Get-Service | Sort-Object Name
Get-Service | Sort-Object Status,Name
Get-Process
Get-Process | Get-Member
Get-Process | Sort-Object VM
Get-Process | Sort-Object VM -Descending
Get-WinEvent -LogName Security | Sort-Object -Property TimeWritten -Descending
-1,-3,-5,-2,-4 | Sort-Object -Descending

1,2,3,4,5 | Measure-Object
1,2,3,4,5 | Measure-Object -Sum -Minimum
1..57 | Measure-Object -Sum
Get-ChildItem "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\scripts" | Measure-Object -Property Length -Sum
Get-ChildItem "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSskills\scripts" | Get-Member
Get-ChildItem "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSskills\scripts" | Sort-Object -Property Length -Descending | Select-Object -Property Name,IsReadOnly,CreationTime,Extension
Get-ChildItem "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSskills\scripts" | Sort-Object -Property Length -Descending | Select-Object -Property Name,IsReadOnly,CreationTime,Extension -First 3
Get-ChildItem "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSskills\scripts" | Sort-Object -Property Length -Descending | Select-Object -Property *
Get-Process | Sort-Object CPU -Descending  |   Select-Object -first 5
Get-ChildItem | Sort-Object LastWriteTime -Descending | Select-Object name, LastWriteTime -First 3


Get-ChildItem | Measure-Object

