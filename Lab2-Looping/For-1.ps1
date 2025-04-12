$Characters = @("Geralt", "Yennefer", "Triss")

#ascending
Write-Host "Start"
for ($i = 0; $Characters.Length -gt $i; $i++) {
    Write-Host "Welcome $($Characters[$i])"
}
Write-Host "Done"

#descending
Write-Host "Start"
for ($i = ( $Characters.Length - 1 ); $i -ne -1; $i--) {
    Write-Host "Welcome $($Characters[$i])"
}
Write-Host "Done"