$i=0
$max=30
$sourcefilename='c:\temp\master.txt'
"This is a master configuration file" | Out-File -Append 'c:\temp\master.txt'
$destinationFolder='c:\temp\distribution'
# make sure destination folder exists before continuing. 
if ( Test-Path -Path "$destinationFolder" ) 
{
    Write-Host "$destinationFolder exists"        
}
else {
    Write-Host "$destinationFolder does not exist. Create it now."
    New-Item -ItemType "directory" -Path "c:\temp\distribution" 
}



while ($i -lt $max) {
    $i++
    Write-Host "$i"
}


$destinationFile='$i.txt'
