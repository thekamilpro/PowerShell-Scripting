function Get-Document {
    param(
        [Parameter(Mandatory)]
        [ValidateScript({Test-Path $_})]
        [string]$Path
    )

    Get-Content -Path $Path
}

Get-Document -Path "Not here"
Get-Document -Path "$PSScriptRoot\Validate-1.ps1"

#to read more: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_functions_advanced_parameters?view=powershell-7.4#parameter-and-variable-validation-attributes