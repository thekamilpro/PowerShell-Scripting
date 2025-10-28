$ErrorActionPreference = 'Stop'
try {
    Get-Item -Path "here.txt"
    #Get-ItemAAA -Path "here.txt"
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

#To find Error type on PowerShell 7:
Get-Error
#On Windows PowerShell 5.1
$error[0].exception.GetType().FullName