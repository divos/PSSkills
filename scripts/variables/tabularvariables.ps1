Set-Variable -Name "LabPath" -Value "Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\"

$compnames="Cantor8,Newton8,Pascal7"
$compnames

Get-Content C:\$LabPath\compnames.txt
$compnames = Get-Content C:\$LabPath\compnames.txt
$compnames

$compnames | ForEach-Object { "Working on $_" }
$compnames | ForEach-Object { Get-Content "c:\$LabPath\$PSItem.txt" }

$compnames[0]
$compnames[1]
$compnames.Count
$compnames.Length
$compnames[0].Length
$compnames[$compnames.Count-1]
$compnames[-1]
$compnames[-2]
$compnames[-11]

$services = Get-Service
$services.Count
$runningServices = Get-Service | Where-Object { $PSItem.Status -eq "Running"}
$runningServices.Count
$services.Count - $runningServices.Count


$files = Get-ChildItem c:\temp -File | Sort-Object Length 
$files
$files[-1].Length 
$files[0].Length
$files.Length

$certs = Get-ChildItem Cert:\LocalMachine\CA 
$certs | ForEach-Object { Thumbprint + " " + Verify()}
$certs | ForEach-Object Thumbprint + " " + Verify()
$certs | ForEach-Object { $PSItem.Thumbprint+ " " +$PSItem.Verify()}

## 1.      In the folder c:\temp you need to create a couple of folders. Names of the folder that would need to be created will be saved in a file  c:\temp\subdirs.txt. At the moment, declare only a variable  $subdirs, and assign to it following elements:
# a.      01_Input
# b.      02_Processing
# c.      03_Results



## 2.      Declare variable BaseDir and assign it a value ‘c:\temp\’.
$LabPath
$BaseDir = "C:\$LabPath\temp"

## 3.      Using the pipe, pass the variable $subdirs to foreach-object, that in this step will only display the values of passed into the pipektóre na razie tylko 

$subdirs = Get-ChildItem "$BaseDir"
$subdirs | ForEach-Object { Write-Host $PSItem }

## 4.      Change the command in ForEach-Object so, that the path consisting of BaseDir and a subfolder will be displayed.

$subdirs | ForEach-Object { Write-Host "$BaseDir$_" }

## 5.      Change the command in ForEach-Object so, that the command will create folders instead of displaying it.

$subdirs | ForEach-Object { New-Item -Path "$BaseDir$_" -ItemType Directory }

## 6.      Using pipe and command Out-File save the elements of the list in $subdirs in the file c:\temp\subdirs.txt.

## 7.      Display content of the file

## 8.      Change the line from the point (4) so, that the subdirectories will be read from a file

## 9.      Using notepad, change the names of folders saved in the file c:\temp\subdirs.txt na:
# a.      A_Input
# b.      B_Processing
# c.      C_Results
# d.      D_Temporary

## 10.   Change the command from the point (8) so, that the folder names will be taken directly from a file, not using the $subdirs variable. Run the command.

