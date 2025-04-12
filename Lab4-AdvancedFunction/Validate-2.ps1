function Get-Fruit {
    param(
        [Parameter(Mandatory)]
        [ValidateSet('Apple', 'Banana', 'Cherry')]
        [string]$Name,

        [ValidateRange(1,5)]
        [int]$Quantity = 1
    )

    Write-Host "You have chosen $Name * $Quantity"
}

Get-Fruit -Name Apple -Quantity 3
Get-Fruit -Name Apple -Quantity 7
Clear-Host