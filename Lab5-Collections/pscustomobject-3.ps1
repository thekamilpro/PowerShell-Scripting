# Filtering 
$pets = @(
    [pscustomobject]@{
        name = "Fiber"
        kind = "Cat"
    },
    [pscustomobject]@{
        name = "Boss"
        kind = "Dog"
    },
    [pscustomobject]@{
        name = "Qwerty"
        kind = "Cat"
    }
)
$pets

$pets | Where-Object {$_.kind -eq "Cat"} 