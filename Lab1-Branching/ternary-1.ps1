$path = "$PSScriptRoot\switch-1.ps1"

# Both statement do exactly the same
#This is PowerShell 7 only
(Test-Path -Path $path) ? (Write-Host "File exists") : (Write-Host "File does not exist")

if (Test-Path -Path $path) {
    Write-Host "File exists"
}
else {
    Write-Host "File does not exist"
}