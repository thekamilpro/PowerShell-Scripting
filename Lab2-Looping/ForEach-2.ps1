$numbers = 1..10

Write-Host "Start"
foreach ($number in $numbers) {
    if ($number -eq 5) {
        #break breaks out of the loop
        break
    }
    Write-Host $number
}
Write-Host "Stop"