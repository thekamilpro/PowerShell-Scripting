function Find-Software {
    [CmdletBinding()]
    param(
        [Parameter(ValueFrompipeline, Mandatory)]
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

Find-Software -Name "git"
"git" | Find-Software
Clear-Host