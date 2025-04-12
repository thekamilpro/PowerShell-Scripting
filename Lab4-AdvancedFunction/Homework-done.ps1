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
            Write-Verbose "Processing path [$path]"
            foreach ($n in $Name) {
                Write-Verbose "Searching for [$n]"
                Get-ChildItem -Path $path |
                Get-ItemProperty |
                Where-Object { $_.DisplayName -like "*$n*" }
            }
        }
    }

    end {
    }
}

function Remove-Software {
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = "High", DefaultParameterSetName = "byName")]
    param(
    
        [Parameter(Mandatory, ParameterSetName = "byName")]
        [string]$Name,
    
        [Parameter(ValueFrompipeline, Mandatory, ParameterSetName = "byObject")]
        [pscustomobject]$InputObject
    )

    begin {
    }

    process {

        if ($PSCmdlet.ParameterSetName -eq "byName") {
            $software = Find-Software -Name $Name
            $software | Remove-Software
        }

        if ($PSCmdlet.ParameterSetName -eq "byObject") {
            if ($PSCmdlet.ShouldProcess($InputObject.DisplayName, "Uninstall Software")) {
                Write-Host "Removing: [$($InputObject.DisplayName)]" -ForegroundColor Green
                Start-Process -FilePath $InputObject.UninstallString -Wait
            }            
        }
    }

    end {
    }
}