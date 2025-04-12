$characters = @("Geralt", "Yennefer", "Triss")

Write-Host "Start"

$characters | 
    ForEach-Object {Write-Host "Welcome: $_"}

Write-Host "STOP"