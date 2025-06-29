#Hashtable in a function
function Get-Hashtable {
    param (
        [hashtable]$Data
    )

    foreach ($i in $Data.GetEnumerator()) {
        Write-Host "$($i.Key):$($i.Value)"
    }
}

Get-Hashtable -Data @{
    Drink = "Coffee"
    Food = "Carbonara"
    Place = "Mauritius"
}