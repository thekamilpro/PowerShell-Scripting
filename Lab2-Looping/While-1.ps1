$Characters = @("Geralt", "Yennefer", "Triss")

Write-Host "Start"
$i = 0
while ($i -lt $Characters.Length) {
    Write-Host "Welcome $($Characters[$i])"
    $i++
}
Write-Host "Stop"
