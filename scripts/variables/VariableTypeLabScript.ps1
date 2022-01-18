$StartTime
$StopTime

[datetime]$StartTime = Get-Date
Start-Process -FilePath "notepad.exe" -Wait
[datetime]$StopTime = Get-Date
$TimeSpent = $StopTime - $StartTime
# The previous worked, this is prettier.
# [TimeSpan]$TimeSpent = $STopTime.Subract($StartTime)
$TimeSpent
$TimeSpent.TotalSeconds