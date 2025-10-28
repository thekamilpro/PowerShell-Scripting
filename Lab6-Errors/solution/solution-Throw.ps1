
function Test-PwshLatest {

    [CmdletBinding()]
    param(
        [Parameter()]
        [switch]$Fail
    )

    $current = $PSVersionTable.PSVersion
    Write-Host "Current: $current"
    $url = $Fail ? "https://endoflife.date/api/v2" :  "https://endoflife.date/api/v1/products/powershell/releases/latest"
    try {
        $response = Invoke-RestMethod -Uri $url
    } catch [Microsoft.PowerShell.Commands.HttpResponseException] {
        $statusCode = $_.Exception.Response.StatusCode
        if ($statusCode -eq "NotFound") {
            throw "HTTP Response: NotFound"
        }
        throw "HTTP Response $statusCode"
    } catch {
        throw $_
    }
    $latest = $response.result.latest.name
    Write-Host "Latest: $latest"
    if ($current -lt $latest) {
        return $false
    }
    return $true
}