function Find-Software {
    [CmdletBinding()]
    param(
        [Parameter(ValueFrompipeline, Mandatory, ValueFromPipelineByPropertyName)]
        [string[]]$Name
    )

    begin {
        Write-Verbose "Setting up paths"
        $paths = @(
            "hklm:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall",
            "hklm:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
        )
    }

    process {
        foreach ($path in $paths) {
            Write-Debug "Processing path [$path]"
            foreach ($n in $Name) {
                Write-Verbose "Searching for [$n]"
                Get-ChildItem -Path $path |
                    Get-ItemProperty |
                    Where-Object {$_.DisplayName -like "*$n*" }
            }
        }
    }

    end {
        Write-Host "End"
    }
}

"git" | Find-Software
"git" | Find-Software -Verbose
"git" | Find-Software -Debug
"git" | Find-Software -Debug -Verbose
Clear-Host