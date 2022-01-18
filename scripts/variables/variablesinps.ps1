Set-Variable -Name "LabPath" -Value "Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\"

Get-ChildItem VARIABLE:\
Get-ChildItem VARIABLE:\labp*
Get-Command -Noun Variable
$compname = 'cantor8'
Set-Variable filterExpression xbox
Get-Service -ComputerName $compname | Where-Object Name -Like "*$filterExpression*"
Double vs single quotes
# PS tries to interpret variable, so it replaces its value. Variables have to be double quoted.
# Single quotes, the variables are not replaced, they are retained. 

Get-Service BITS | Select-Object Name

#### LAB
#### 1.      Declare variable named  MyService and assign to it value "bits”
$MyService = 'bits'
Set-Variable MyService bits

#### 2.      Display all the services that have name equal to the variable  MyService
$MyService
Get-Service $MyService

### Issues with deprecated Get-EventLog cause too many issues on these commands. Course should be updated.
#### 3.      Using commands that are dedicated for working with variables declare variables:
# a.      EventLogName with a value "System"
# b.      EventNumber with a value of 5

#### 4.      Change the below command displaying last 3 events form windows application event log, so that it will use the variables created in the previous step:    
# Get-EventLog -Newest 3 -LogName application 

#### 5.      Display the elements visible on the drive ENV: (This drive contains environmental variables defined on computer, btw those values can be used in your scripts)

Get-ChildItem ENV:\

#### 6.      This time don't use the commands dedicated to work with variables (use the simplified form of $ and name of variable). Create variables and assign them initial values: taken from environmental variables:
# a.      MyComputerName
# b.      MyOperatingSystem
# c.      MyUserName
# Hint: Environmental variables are treated on the ENV:\ drive like files, so to read the value of such environmental variable use command Get-Content, like in the example below:
# Get-Content -Path Env:\PROCESSOR_ARCHITECTURE 

#### 7.      To get the value of environmental variables also another variable named $env cound be used. Simplify the form of the previous commands, so that the script will use the $env variable. You should use syntax similar to:
# $env:PROCESSOR_ARCHITECTURE 