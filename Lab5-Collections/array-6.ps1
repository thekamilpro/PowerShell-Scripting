#Array in a function
function Get-Array {
    param (
        [array]$Data,

        [string[]]$City
    )

    foreach ($i in $Data) {
        Write-Host $i
    }

    foreach ($c in $City) {
        Write-Host $c
    }
}
Get-Array -Data @(1, "Cat")

Get-Array -City "London","LA","Port Louis"