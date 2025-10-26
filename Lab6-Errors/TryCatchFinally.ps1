$ErrorActionPreference = 'Stop'
try {
    #Get-Item -Path "here.txt"
    Get-Item -Path "$PSScriptRoot/TryCatch1.ps1"
}
catch {
    Write-Warning "File not found"
}
#finally always executes
finally { 
    Write-Host "Closing Database Connection"
    Write-Host "Exit"
}