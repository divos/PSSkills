Set-Variable -Name "LabPath" -Value "Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\"

$i=0
while($i -lt 10)
{
    $i++
    Write-Host "$i"
}

$i=0
while ($i -lt 10) {
    $i++
    if ($i%2 -eq 0) 
    {
        Write-Host "$i is even"    
    }
    else {
        Write-Host "$i is odd"
    }
}

$i=0
while ($i -lt 100) {
    $i++
    if ($i%2 -eq 0) 
    {
        Write-Host "$i is even"    
    }
    else {
        Write-Host "$i is odd"
    }
    If($i -eq 10) 
    {
        Write-Host "We have reached '10', so I'm breaking the loop"
        Break
    }
}



