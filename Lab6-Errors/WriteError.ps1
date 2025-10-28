foreach ($i in 1..100) {
    if ($i -gt 10) {
        Write-Error "We are allowed only 10" -Category LimitsExceeded -RecommendedAction "Limit your action to less than 10"
    }
    Write-Host $i
    $i++
}



