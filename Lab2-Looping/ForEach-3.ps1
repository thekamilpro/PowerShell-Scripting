$numbers = 1..10

Write-Host "Start"
foreach ($number in $numbers) {
    if ($number -eq 5) {
        #continue skips an item
        continue
    }
    Write-Host $number
}
Write-Host "Stop"