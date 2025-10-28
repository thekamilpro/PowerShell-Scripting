$ErrorActionPreference = 'Continue'
# You need terminate code to for catch to engage
try {
    Get-Item -Path "here.txt" #-ErrorAction Stop
    Write-Host "Closing Database Connection"
    Write-Host "Exit"
}
catch {
    Write-Warning "File not found"
}