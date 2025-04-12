function Find-Software {
    [CmdletBinding()]
    param(
        [Parameter(ValueFrompipeline, Mandatory, ValueFromPipelineByPropertyName)]
        [string[]]$Name
    )

    begin {
        $paths = @(
            "hklm:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall",
            "hklm:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
        )
    }

    process {
        foreach ($path in $paths) {
            foreach ($n in $Name) {
                Get-ChildItem -Path $path |
                    Get-ItemProperty |
                    Where-Object { $_.DisplayName -like "*$n*" }
            }
        }
    }

    end {
        Write-Host "End"
    }
}

"git" | Find-Software
[pscustomobject]@{Name = "git"; Version = "2.0.3"} | Find-Software
Clear-Host
