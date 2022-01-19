Set-Variable -Name "LabPath" -Value "Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\"
for ($i = 0; $i -lt 10; $i++) 
{
    Write-Host "$i"    
}

$list="one","two","three","four","five"

foreach ($x in $list) {
    Write-Host "The current element is $x"
}

$list | ForEach-Object { Write-Host "The current element is $PSItem" } 