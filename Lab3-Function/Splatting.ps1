Get-ChildItem -Recurse -Path $PSScriptRoot -Filter *.ps1 -Force -File -Exclude "Return.ps1"

$params = @{
    Recurse = $true
    Path = $PSScriptRoot
    Filter = "*.ps1"
    Force = $true
    File = $true
    Exclude = "Return.ps1"
}
#Get-ChildItem @params