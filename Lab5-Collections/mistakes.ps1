# Not always returning an array
function Get-Arr1 {
    $output = @(1)
    return $output
}

function Get-Arr2 {
    $output = @(1)
    return ,$output
}

(Get-Arr1).GetType()
(Get-Arr2).GetType()

# Adding to array
function Test-ArraySpeed {
    $array = @()
    foreach ($i in 1..100000) {
        Write-Host "Adding $i"
        $array += $i
    }
    # comma ensures PowerShell will always return an array
    return ,$array
}

# Using wrong data structure