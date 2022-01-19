if( (Get-Service bits).Status -eq "Stopped")

{

    Write-Host "Starting service"

    Start-Service bits

    Write-Host "Service started"

}

if( (Get-Service bits).Status -eq "Stopped")

{

    Write-Host "Starting service"

    Start-Service bits

    Write-Host "Service started"

}

else

{

    Write-Host "Service is already running"

}