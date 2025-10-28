$ErrorActionPreference = 'Stop'
try {
    Get-Item -Path "here.txt"
    Write-Host "Closing Database Connection"
    Write-Host "Exit"
}
catch {
    Write-Warning "File not found"
}