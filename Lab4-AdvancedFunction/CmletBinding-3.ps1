function Remove-Software {
    #ConfirmImpact can be: Low,Medium,High
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact="High")]
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
$ConfirmPreference
"git" | Remove-Software -Confirm:$false
Clear-Host