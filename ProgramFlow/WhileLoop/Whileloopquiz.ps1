$comp = "cantor8"
while ( -not (Test-Connection -ComputerName $comp -Count 1 -Quiet))
{
   Write-Warning "$comp is not reachable"
   Start-Sleep -Seconds 10
}
Write-Host "$comp reachable at $(Get-Date)"

$comp = "10.250.19.6"
while ( -not (Test-Connection -ComputerName $comp -Count 1 -Quiet))
{
  Write-Warning "$comp is not reachable"
  Start-Sleep -Seconds 10
}
Write-Host "$comp reachable at $(Get-Date)"

$comp = "cantor8"
while ( -not (Test-Connection -ComputerName $comp -Count 1 -Quiet))
{
   Write-Warning "$comp is not reachable"
   Start-Sleep -Seconds 10
}
Write-Host "$comp reachable at $(Get-Date)"



$i=1
while($i -lt 10)
{
    $i++
   if (Test-Connection -ComputerName "10.250.19.$i" -Quiet -Count 1)
   {
      Write-Host "$i is available"
   }
   else
   {
      Write-Host "$i is not responding"
   }
}

