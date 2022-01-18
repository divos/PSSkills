10 -gt 5
10 -eq 8
10 -lt 11
10 -ge 10
10 -le 10
10 -ne 11
'powershell' -like 'Power*'
'powershell' -clike 'Power*'
-not $true
1 -eq 1 -and 2 -eq 2
1 -eq 1 -and 2 -eq 20
-not (1 -eq 1)
-not (1 -eq 1) -and 2 -eq 2
Set-Variable -Name "LabPath" -Value "Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\"
Get-ChildItem "C:\$LabPath\" | Get-Member
Get-ChildItem "C:\$LabPath\" | Where-Object -Property PSIsContainer -eq -value $true
Get-ChildItem "C:\$LabPath\" | Where-Object PSIsContainer -eq $true
Get-ChildItem C:\$LabPath\ | Where-Object PSIsContainer
Get-ChildItem C:\$LabPath\ | Where-Object PSIsContainer
Get-ChildItem "C:\$LabPath\" | Where-Object -Property PSIsContainer -eq -value $false
Get-ChildItem "C:\$LabPath\" | Where-Object PSIsContainer -eq $false
# Expected to fail due to missing parameters.
Get-ChildItem C:\$LabPath | Where-Object PSIsContainer -eq $false -and Extension -eq '.txt'
# Correction for above failure - Does not capture file extension however.
# $PSItem can be replaced with $_ 
Get-ChildItem C:\$LabPath | Where-Object -FilterScript { $PSItem.PSIsContainer -eq $false }
# Pull Back .csv files. Not efficient however, should be able to just pull .txt files. 
Get-ChildItem C:\$LabPath | Where-Object -FilterScript { $PSItem.PSIsContainer -eq $false -and $PSItem.Extension -eq '.csv'}
# Pull text files. Far more efficient.
Get-ChildItem C:\$LabPath -Filter "*.csv" -File

"Windows 10" -like "windows *"
Get-Service -name "*Xbox*" 
# This fails, too many parameters, will need to execute in braced brackets.
Get-Service | Where-Object Name -Like '*xbox*' -and status -eq 'running'
# This service is not actually running. 
Get-Service | Where-Object { $PSItem.Name -like '*xbox*' -and $PSItem.status -eq 'running'}
# Swap Running for Stopped and test. 
Get-Service | Where-Object { $PSItem.Name -like '*xbox*' -and $PSItem.Status -eq 'stopped'}


Get-Process 
Get-Process | Select-Object -First 5
Get-Process | Sort-Object TotalProcessorTime -Descending | Select-Object -First 5
# Manage Process - Find Top 5 running proceses. Skip outlook proces. This works but is not the right answer. I want to get the info fist, then filter.
Get-Process | Where-Object { -not ($PSItem.Name -like '*outlook*')} |Sort-Object TotalProcessorTime -Descending | Select-Object -First 5
Get-Process | Sort-Object TotalProcessorTime -Descending | Where-Object { -not ($PSItem.name -like '*outlook*')} | Select-Object -First 5


# Find Files Larger Then 100MB
Get-ChildItem -Recurse C:\ | Where-Object Length -gt 100MB
Get-Help AddYears
Get-ChildItem C:\$LabPath -Recurse | Where-Object { $PSItem.Length -gt 10MB -and $PSItem.LastWriteTime -lt (Get-Date).AddYears(-1)}


# LAB WORK
# https://www.udemy.com/course/powershell-essential-course-with-labs/learn/lecture/10170522#questions

# Display the list of files from the directory c:\temp that are older than 5 minutes. To calculate the time of "5 minutes ago" use
# (Get-Date).AddMinutes(-5) 
# Get items and then items written greater than five minutes ago.
Get-ChildItem C:\temp | Where-Object { $PSItem.LastWriteTime -gt (Get-Date).AddMinutes(-5)}

# Display the list of files form the directory c:\temp that are older than 2 days and having the extension  .txt.  To calculate the time "2 days ago" use
# (Get-Date).AddDays(-2) 
Get-ChildItem -Recurse C:\temp | Where-Object { $PSItem.LastWriteTime -gt (Get-Date).AddDays(-2)}

Get-Process notepad
Get-WinEvent -ListLog *
Get-WinEvent -ListLog System
Get-WInevent -ListLog Setup | Format-List -Property *
Get-WinEvent | Where-Object Name System | Sort-Object -Descending | Where-Object { $PSItem.ID = 1047} | Select-Object -First 5

Get-WinEvent -LogName System -Source USER32
