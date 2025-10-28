foreach ($i in 1..100) {
    if ($i -gt 10) {
        Throw [System.Management.Automation.ItemNotFoundException] "Only 10 is allowed"
    }
    Write-Host $i
    $i++
}