# Truthy/Falsy

$Name = Read-Host -Prompt "Enter your name"
if ($Name) {
    Write-Host "Hello $Name"
}
else {
    Write-Host "You didn't provide name."
}

"" -eq $true
0 -eq $true
0.0 -eq $true
$null -eq $true