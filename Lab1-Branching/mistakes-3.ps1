#Not using early returns - unnecessary else statement

$name = "Kamil"

if ( [string]::IsNullOrEmpty($name)) {
    Write-Host "Name cannot be empty"
} else {
    Write-Host "Code execution to for the rest of the code"
}

if ( [string]::IsNullOrEmpty($name)) {
    Write-Host "Name cannot be empty"
    return
}
Write-Host "Code execution to for the rest of the code"
