$Name = Read-Host -Prompt "Enter your name"
if ($Name) {
    Write-Host "Hello $Name"
}
else {
    Write-Host "You didn't provide name."
}