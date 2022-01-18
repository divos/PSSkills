Get-ChildItem "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSskills\scripts" 
Get-ChildItem "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSskills\scripts" | Select-Object Name,Length
Get-ChildItem "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSskills\scripts" | Select-Object Name,Length,@{n='Size in KB';e={($PSItem.Length/1024)}}
Get-ChildItem "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSskills\scripts" | Select-Object Name,Length,@{n='Size in KB';e={($PSItem.Length/1KB)}}
Get-ChildItem "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSskills\scripts" | Select-Object Name,Length,@{n='Size in KB';e={($PSItem.Length/1KB)}},@{n='Size in MB';e={($PSItem.Length/1MB)}}
Get-ChildItem "C:\Users\lgrant\OneDrive - Quest\AdminScripts\PSskills\scripts" | Select-Object Name,Length,@{n='Size in KB';e={'{0:N3}' -f ($_.Length/1KB)}},@{n='Size in MB';e={'{0:N3}' -f ($_.Length/1MB)}}
Get-CimInstance Win32_logicaldisk |Select-Object Name,Size,@{Name="Size(GB)";Expression={("{0:N2}" -f($_.size/1GB))}}
Get-CimInstance Win32_logicaldisk |Select-Object Name,Size,@{Name="Size(GB)";Expression={("{0:N0}" -f($_.size/1GB))}}
Get-CimInstance Win32_logicaldisk |Select-Object Name,Size,FreeSpace,@{Name="Free(%)";E={"{0,6:P0}" -f(($_.freespace)/($_.size))}}
Get-CimInstance Win32_logicaldisk |Select-Object DeviceID,MediaType,@{Name="Free(%)";E={"{0,6:P0}" -f(($_.freespace)/($_.size))}}
Get-Process | Select-Object Name,VM |Sort-Object VM -Descending |Select-Object name,@{n="Memory MB";e={'{0:N0}' -f ($_.VM/1MB)}}


# Get duration of Certificates on localmachine
#Both of these work, the subtract is valid on both. ls can be used in place of Get-ChildItem but is less recommended in modern PS.
Get-ChildItem -path Cert:\LocalMachine\My | Select-Object Name,Thumbprint,NotAfter,NotBefore
Get-ChildItem -path Cert:\LocalMachine\My | Select-Object Name,Thumbprint,NotAfter,NotBefore,@{N='Duration';e={($_.NotAfter - $_.NotBefore )}}
Get-ChildItem -path Cert:\LocalMachine\My | Select-Object Name,Thumbprint,NotAfter,NotBefore,@{N='ValidDays';e={($_.NotAfter.Subtract($_.NotBefore ))}}


#Display List of CPU's - Sort Desc - Convert seconds to minutes and display only top 5 heavy processes. Remove Decimal places.
Get-Process | Sort-Object -Descending CPU | Select-Object ProcessName,CPU,@{n='CPUMinutes';e={'{0:N0}' -f ($_.CPU/60)}} -First 5