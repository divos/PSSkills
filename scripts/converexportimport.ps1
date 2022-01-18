
# ConvertTo List of options. 
Get-Help -Verbose ConvertTo
# Opposite of above
Get-Help -Verbose ConvertFrom

# These are not complete commands, quick copy/paste place holders.
Get-Help -Verbose Export
Get-Help -Verbose Import

# Demonstrating an expanding command.
Get-Service | Select-Object -First 5 | ConvertTo-Csv
Get-Service | Select-Object -First 5 | ConvertTo-Csv | ConvertFrom-Csv | Sort-Object Name -Descending | Select-Object Name,Status
Get-Service | Select-Object -First 5 | ConvertTo-Csv | Out-File "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\services.csv"
Get-Content "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\services.csv" | ConvertFrom-Csv
Get-Content "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\services.csv" | ConvertFrom-Csv | Get-Member
Import-Csv "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\services.csv"
Get-Service | Select-Object -property name -First 5 | ConvertTo-Csv | Out-File "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\services2.csv"
Get-Content "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\services2.csv"
Import-Csv "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\services2.csv"
Get-Service | Select-Object -First 5 | Export-Csv "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\svcexp.csv"
Get-Content "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\svcexp.csv"
Import-Csv "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\svcexp.csv"

# QUIZ
Get-HotFix
Get-HotFix | Export-Csv "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\explab.csv"
Import-Csv "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\explab.csv"

# LAB
Get-ChildItem C:\Windows
Get-ChildItem C:\Windows | ConvertTo-Html | Out-File "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\cout.html"

# Get Disk Info

# This works as expected
Get-CimInstance Win32_logicaldisk -Filter 'DeviceID = "C:"' | Select-Object -Property DeviceID,FreeSpace,Size,@{N='Used';e={($_.Size - $_.FreeSpace )}} | ConvertTo-Csv | Out-File -Append "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\Drive.Out.csv"
# This does not but I feel it should, perhaps some weird interaction between Size and Subtract?
Get-CimInstance Win32_logicaldisk -Filter 'DeviceID = "C:"' | Select-Object -Property DeviceID,FreeSpace,Size,@{N='Used';e={($_.Size.Subtract($_.FreeSpace ))}}


# Import File and Display contents.
Import-Csv "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\Drive.Out.csv"
##############################
# Official Answers. Some is definitely better than what I did.
#1.      ls C:\Windows | ConvertTo-Html | Out-File c:\temp\files.html
#
#2.      Get-Volume -DriveLetter C | select Driveletter, Size, SizeRemaining
#
#3.      Get-Volume -DriveLetter C | select Driveletter, Size, SizeRemaining | Export-Csv C:\temp\report.csv -Append
#
#4.      Import-csv C:\temp\report.csv
#
#5.      Get-Volume -DriveLetter C | select @{name='Date';expression={Get-Date}},Driveletter, Size, SizeRemaining
#
#6.      Get-Volume -DriveLetter C | select @{name='Date';expression={Get-Date}},Driveletter, Size, SizeRemaining | Export-Csv C:\temp\report_date.csv -Append
#
#7.      Import-csv C:\temp\report_date.csv
#
#8.      Import-csv C:\temp\report_date.csv | select -Last 1 
####################################################################################