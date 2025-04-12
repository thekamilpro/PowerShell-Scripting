#To find out all approved verbs
Get-Verb

#Unapproved Verb
Create-User #use New-User or Add-User
Init-Config #use Initialize-Config

#Function should be named Verb-Noun, using Pascal Case
RemoveFile #Should be Remove-File
stop-Installation #Should be Stop-Installation
Redo-Browserbasicuserconfig # Should be Redo-BrowserBasicUserConfig

#Functions in similar domain should have common prefix
Get-AdUser
Remove-AdUser
Set-AdUser
