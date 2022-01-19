$services ='SQLSERVERAGENT', 'MSSQLSERVER', 'SQLBrowser'
foreach($s in $services)
{
   $status = Get-Service $s | select -ExpandProperty Status
   if($status -eq "stopped")
   {
      Write-Warning "Starting $s"
      Start-Service $s
   }
}

for($x=0;$x -lt 10;$x++)
{
     New-Item -ItemType Directory -Path "c:\temp\$x"
}

for($x=0;$x -lt 10;$x++)
{
    if(Test-Path "C:\Temp\$x")
    {
        Write-Warning "Folder/File $x already exists"
        break
    }
    else
    {
        New-Item -ItemType Directory -Path "c:\temp\$x" 
    }
}

for($x=0;$x -lt 10;$x++)
{
    if(Test-Path "C:\Temp\$x")
    {
        Write-Warning "Folder/File $x already exists"
        continue
    }
    else
    {
        New-Item -ItemType Directory -Path "c:\temp\$x" 
    }
}
