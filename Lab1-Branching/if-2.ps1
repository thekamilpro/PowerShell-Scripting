$User = "Bob"
if ($User -eq "Bob") {
    Write-Host "Hello Bob"
}
Write-Host "Completed"

#By default -eq is not case sensitive.
if ($User -eq "bob") {
    Write-Host "Hello Bob"
}
Write-Host "Completed"

#If you want to be case sensitive, use -ceq
if ($User -ceq "bob") {
    Write-Host "Hello Bob"
}
Write-Host "Completed"

