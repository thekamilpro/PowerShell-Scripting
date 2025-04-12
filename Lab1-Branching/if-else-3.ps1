$Age = -123

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