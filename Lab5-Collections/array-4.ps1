#You can add items to array...
$array = @()
foreach ($i in 1..100) {
    $array += $i
}
$array

# But it gets slow real fast
function Test-ArraySpeed {
    $array = @()
    foreach ($i in 1..100000) {
        Write-Host "Adding $i"
        $array += $i
    }
    # comma ensures PowerShell will always return an array
    return ,$array
}

Measure-Command { Test-ArraySpeed }

function Test-ArraySpeed2 {
    $array = foreach ($i in 1..100000) {
        Write-Host "Adding $i"
    }
    return ,$array
}

Measure-Command { Test-ArraySpeed2 }

# For even better solution, look at lesson about Lists