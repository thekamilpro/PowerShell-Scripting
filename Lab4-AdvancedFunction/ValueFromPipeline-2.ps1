function Get-Number {
    [CmdletBinding()]
    param(
        [Parameter(ValueFrompipeline, Mandatory)]
        [int[]]$Number
    )

    begin {
        Write-Host "Start"
    }

    process {
        foreach ($n in $number) {
            $n * 10
            #throw "Something bad happened"
        }
    }

    end {
        Write-Host "End"
    }

    #Clean is PowerShell 7+ only
    clean {
        Write-Host "Clean"
    }
}

2,3,4 | Get-Number
Get-Number -Number 1,2,3
Clear-Host