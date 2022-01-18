Set-Variable -Name "LabPath" -Value "Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\"

Get-ChildItem C:\$LabPath
Get-ChildItem C:\$LabPath | Get-Member

# Commenting out command as I do not want to delete these files, but structure is a useful example.
# Get-ChildItem C:\$LabPath -Filter "*.csv" | ForEach-Object Delete

Get-ChildItem C:\$LabPath -Filter "*.txt" | ForEach-Object { $PSItem.CopyTo('C:\New\'+$PSItem.Name) }
Get-Process | ForEach-Object -Begin { Get-Date | Out-File -FilePath 'C:\$LabPath\report.txt' -Append } -Process { $PSItem | Select-Object Name,VM | Out-File 'C:\$LabPath\report.txt' -Append }

Get-Alias -Definition ForEach-Object

Get-ChildItem C:\$LabPath | Get-Member
Get-ChildItem C:\$LabPath | ForEach-Object { Get-Content $PSItem }
ForEach-Object -Begin { Write-Host "Services started on $(Get-Date)" } -Process { $_ }


