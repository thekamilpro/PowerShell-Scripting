. "$PSScriptRoot\usersHelper.ps1"

$users = Get-Users

$newUser = New-User -Id 999 -NameFirst Kamil
$users = Add-User -Users $users -NewUser $newUser
Save-Users -Users $users