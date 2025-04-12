$Characters = @("Geralt", "Yennefer", "Triss")

Write-Host "Start"
foreach ($Person in $Characters) {
    Write-Host "Welcome: $Person"
}
Write-Host "Done"