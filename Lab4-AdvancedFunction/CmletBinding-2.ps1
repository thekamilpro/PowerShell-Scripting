function Remove-Software {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(ValueFrompipeline, Mandatory, ValueFromPipelineByPropertyName)]
        [string]$Name
    )

    begin {
    }

    process {
        if ($PSCmdlet.ShouldProcess($name, "Uninstall Software")) {
            Write-Host "Removing: [$Name]" -ForegroundColor Green
        }
    }

    end {
    }
}

"git" | Remove-Software
"git" | Remove-Software -WhatIf
"git" | Remove-Software -Confirm
Clear-Host