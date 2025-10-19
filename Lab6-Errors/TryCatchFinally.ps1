$ErrorActionPreference = 'Stop'
try {
    Get-Item -Path "here.txt"
    #Get-Item -Path "$PSScriptRoot/TryCatch.ps1"
}
catch {
    Write-Warning "File not found"
}
finally {
    Write-Host "Closing Database Connection"
    Write-Host "Exit"
}