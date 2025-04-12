function Get-Fruit {
    [CmdletBinding()]
    param(
        [ValidateSet('Apple', 'Banana', 'Cherry')]
        [string]$Name
    )

    Write-Host "You have chosen $Name"
}

Get-Fruit -Name Apple
Get-Fruit -Name Bla
Get-Fruit -Name  