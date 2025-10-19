$ErrorActionPreference = 'Continue'
Get-Item -Path "here.txt"
# You need terminate code to for catch to engage
try {
    Get-Item -Path "here.txt"
    Write-Host "Closing Database Connection"
    Write-Host "Exit"
}
catch {
    Write-Warning "File not found"
}

$ErrorActionPreference = 'Stop'
try {
    Get-Item -Path "here.txt"
    Write-Host "Closing Database Connection"
    Write-Host "Exit"
}
catch {
    Write-Warning "File not found"
}