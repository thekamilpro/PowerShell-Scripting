#Infinite loop
$i = 0
while ($true) {
    Write-Host "PowerShell $i"
    $i++
}

#In case of infinite loop, we need to have a condition to break out
$i = 0
while ($true) {

    if ($i -eq 100) {
        break
    }

    Write-Host "PowerShell $i"
    $i++
}