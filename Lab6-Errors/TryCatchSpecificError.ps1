$ErrorActionPreference = 'Stop'
try {
    Get-Item -Path "here.txt"
    #Get-Item -Path "$PSScriptRoot/TryCatch.ps1"
}
catch [System.Management.Automation.CommandNotFoundException] {
    Write-Warning "Unknown command"
}
catch [System.Management.Automation.ItemNotFoundException] {
    Write-Warning "Item not found"
}
catch {
    Write-Warning "Uknown error"
    $_
}
finally {
    Write-Host "Closing Database Connection"
    Write-Host "Exit"
}