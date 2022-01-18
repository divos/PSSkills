Set-Variable -Name "LabPath" -Value "Users\lgrant\OneDrive - Quest\AdminScripts\PSSkills\"
[int]$number=100
$number
$number="twenty"

[datetime]$date="2013-09-19"
$date
$date.AddDays(20)
$date.AddDays(20).DayOfWeek
$date.AddDays(-13)

[Boolean]$bool=$true
$bool
$bool="False"
$bool=0
$bool

[string]$s="Hello"
$s
$s.Contains("He")
$s.IndexOf("l")

$s="one,two,three,four,five"
$s.Split(",")

$s -is [string]

$s=10
$s
$s -is [string]
$s -is [int]

$number=$s
$number

$s="ten"
$number=$s

[datetime]$start = '2015/09/04'
$start
$start
[datetime]$start = '2015-10-13'
$start.AddDays(7).AddMonths(3).AddDays(-5).ToString("yyMMdd")

[datetime]$start = '2015-10-13'

[string]$s = '2015-05-30'
[datetime]$d = $s
$d -is [datetime]

$s1 = '2015'
$s2 = '03'
$s3 = '13'
[datetime]$v = $s1+'-'+$s2+'-'+$s3
$v


[string]$LogFile = "C:\"
$LogFile
(Get-Date).ToString("yyyy_MM_dd")
[string]$LogFile = (Get-Date).ToString("yyyy_MM_dd")
$LogFile   
[string]$LogFile = (Get-Date).ToString("yyyy_MM_dd_mm_ss")
$LogFile

$StartTime
$StopTime

[datetime]$StartTime = Get-Date
[datetime]$StopTime = Get-Date

