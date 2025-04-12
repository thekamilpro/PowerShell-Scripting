Function Connect-Somewhere {

    param(
        [Parameter(Mandatory)]
        [pscredential]$Credential
    )

    Write-Host "Username: $($Credential.UserName)"
    Write-Host "Password: $($Credential.GetNetworkCredential().Password)"

}

Connect-Somewhere
$creds = Get-Credential
$creds
$creds | Get-Member
Connect-Somewhere -Credential $creds

$username = "user"
$password = "pass" | 
    ConvertTo-SecureString -AsPlainText -Force
$credsScripted = [pscredential]::new($username, $password)
Connect-Somewhere -Credential $credsScripted

Clear-Host