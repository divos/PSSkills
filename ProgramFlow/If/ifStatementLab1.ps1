$local="localhost"
$remote="10.250.19.6"
$RCAlive = Test-Connection -TargetName "$remote" -Count 1 -Quiet
$RCAlive
$LCAlive = Test-Connection -TargetName "$local" -Count 1 -Quiet
$LCAlive


if($RCAlive)

{

    Copy-Item C:\temp\test.txt.txt \\"$remote"\c$\temp\NewFile.txt

}

else {
    Write-Host "Remove host is not responding"
}



