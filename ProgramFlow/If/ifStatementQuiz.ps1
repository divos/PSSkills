# Question 1

$freespace = Get-Freespace -disk 'c:'
if($freespace -lt 1GB)
{
Write-Warning "Disk low space alert"
}
elseif($freespace -lt 5GB)
{
Write-Warning "Disk low space warning"
}
else
{
Write-Warning "Disk space ok"
}

# Question 2

$freespace = Get-Freespace -disk 'c:'
if($freespace < 1GB)
{
Write-Warning "Disk low space alert"
}
elseif($freespace > 5GB)
{
Write-Warning "Disk low space warning"
}
else
{
Write-Warning "Disk space ok"
}

# Question 3
# Part 1

if($freespace -lt 1GB)
{
   Write-Warning "Disk low space alert"
}
elseif($freespace -lt 5GB)
{
   Write-Warning "Disk low space warning"
}
else
{
   Write-Warning "Disk space ok"
}
# Part 2

if($freespace -lt 1GB)
{
   Write-Warning "Disk low space alert"
}
else
{
   if($freespace -lt 5GB)
   {
      Write-Warning "Disk low space warning"
   }
   else
   {
      Write-Warning "Disk space ok"
   }
}

# Question 4
# Part 1

if($freespace -lt 1GB)
{
   Write-Warning "Disk low space alert"
}
elseif($freespace -lt 5GB)
{
   Write-Warning "Disk low space warning"
}
else
{
   Write-Warning "Disk space ok"
}

# Part 2

if($freespace -lt 1GB)
{
   Write-Warning "Disk low space alert"
}
if($freespace -lt 5GB)
{
   Write-Warning "Disk low space warning"
}
else
{
   Write-Warning "Disk space ok"
}

# Question 5

If (Test-Connection -Quiet -ComputerName 10.250.19.6)
{
   Write-Host "Connection OK"
}
else
{
   Write-Host "Cannot connect"
}