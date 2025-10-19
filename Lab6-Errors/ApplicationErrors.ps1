try {
    Get-Command -Name git -CommandType Application -ErrorAction Stop
}
catch {
    Throw "No git, everything fails"
}

#Not all native applications would return error
try {
    git --thiscommanddoesntexist
}
catch {
    Throw "Git has failed"
}

# That's why we have last exit code
$LASTEXITCODE

# By convention, 0 exit code means successful exection. But it's not always a case.
git --version
$LASTEXITCODE

#By assigning command to $null we can supress it from writing to screen
git --thiscommanddoesntexist
if ($LASTEXITCODE -ne 0) {
    Throw "Git has failed"
}

#PowerShell 7 introduces $PSNativeCommandUseErrorActionPreference so application errors are treated as regular PowerShell cmdlets functions.
$PSNativeCommandUseErrorActionPreference = $false
$ErrorActionPreference = "Stop"
git --thiscommanddoesntexist
Write-Host "Done"