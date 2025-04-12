function Remove-Software {
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = "High", DefaultParameterSetName = "byName")]
    param(
        [Parameter(ValueFrompipeline, Mandatory, ValueFromPipelineByPropertyName, ParameterSetName = "byName")]
        [string]$Name,

        [Parameter(ValueFrompipeline, ValueFromPipelineByPropertyName, Mandatory, ParameterSetName = "byGuid")]
        [guid]$Guid,

        [switch]$Transcript
    )

    begin {
        if ($Transcript) {
            $transcriptFile = "SoftwareRemoval-" + (Get-Date -Format "yyyyMMddHHmmss") + ".txt"
            Start-Transcript -Path "$PSScriptRoot\$transcriptFile"
        }
    }

    process {

        if ($PSCmdlet.ParameterSetName -eq "byGuid") {   
            if ($PSCmdlet.ShouldProcess($guid, "Uninstall Software by Guid")) {
                Write-Host "Removing by Guid: [$Guid]" -ForegroundColor Yellow
            }
            
        }

        if ($PSCmdlet.ParameterSetName -eq "byName") {
            if ($PSCmdlet.ShouldProcess($name, "Uninstall Software")) {
                Write-Host "Removing: [$Name]" -ForegroundColor Green
            }
        }
    }

    end {
        if ($Transcript) {
            Stop-Transcript
        }
    }
}

$ConfirmPreference = "None"
 Remove-Software
Remove-Software -Name git
$guid = New-Guid
$guid
$guid | Get-Member
$guid| Remove-Software 
$guid | Remove-Software -Transcript
Clear-Host