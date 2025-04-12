# -Parallel is PowerShell 7 only
$numbers = 1..20

$numbers | ForEach-Object -Parallel { Write-Host $_; Start-Sleep -Seconds 1 }# -ThrottleLimit 20

$numbers | ForEach-Object { Write-Host $_; Start-Sleep -Seconds 1 }