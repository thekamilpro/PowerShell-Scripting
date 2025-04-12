function Get-Number {
    [CmdletBinding()]
    param(
        [Parameter(ValueFrompipeline, Mandatory)]
        [int[]]$Number
    )

    begin {<#begin executes only once, for the very first item#>}

    process { <#process executes for every item#>
        foreach ($n in $number) {
            $n * 10
        }
    }

    end {<#end executes only once for the last item#>}
}

2 | Get-Number
2,3,4 | Get-Number
Clear-Host