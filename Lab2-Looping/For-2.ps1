$numbers = 1..10
#ascending
Write-Host "Start"
for ($i = 0; $i -lt $numbers.Length; $i++) {
    Write-Host "Index: $i; Number: $($numbers[$i])"
}
Write-Host "Done"