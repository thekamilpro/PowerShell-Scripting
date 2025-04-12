function Get-Number {
    param(
        [Parameter(Mandatory)]
        [int[]]$Number
    )
    foreach ($n in $number) {
        $n * 10
    }
}

Get-Number -Number 2
Get-Number -Number 2,3,4