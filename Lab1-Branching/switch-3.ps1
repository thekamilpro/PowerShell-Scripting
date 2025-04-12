$number = 2

switch ($number) {
    { $_ -gt 1 } { Write-Host "1+"; continue }
    { $_ -gt 2 } { Write-Host "2+" }
    { $_ -gt 3 } { Write-Host "3+" }
    { $_ -gt 4 } { Write-Host "4+" }
}