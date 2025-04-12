$Age = 18

if ($Age -ge 0 -and $Age -lt 7) {
    Write-Host "You can't be here on your own"
}
elseif ($Age -ge 7 -and $Age -lt 18) {
    Write-Host "You can do some things on your own"
}
elseif ($Age -ge 18) {
    Write-Host "Freedom"
}
else {
    Write-Host "What are you?"
}

switch ($Age) {
    { $_ -ge 0 -and $_ -lt 7 } { Write-Host "You can't be here on your own" }
    { $_ -ge 7 -and $_ -lt 18 } { Write-Host "You can do some things on your own" }
    { $_ -ge 18 } { Write-Host "Freedom" }
    default { Write-Host "What are you?" }
}