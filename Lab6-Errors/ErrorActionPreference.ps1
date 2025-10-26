#By default this is configured to Continue, which writes the error to the console, but continues execution.
#What you want in your scripts is to configure this setting to Stop, to terminate the execution.
$ErrorActionPreference

$ErrorActionPreference = 'Continue'
Get-Item "blah.txt"
Write-Host "Here"


$ErrorActionPreference = 'Stop'
Get-Item "blah.txt"
Write-Host "Here"

#Side note, there are a few other preferences you can configure this way:
Get-Variable -Name *Preference