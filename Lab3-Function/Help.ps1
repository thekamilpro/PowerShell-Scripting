function Write-Name {
    <#
    .SYNOPSIS
        Greets a user
    .DESCRIPTION
        Greets users with their name, id and time of a day
    .NOTES
        This is a very nice function to use. Perhaps put it in your profile?
    .LINK
        https://kamilpro.com
    .EXAMPLE
        Write-Name -Name Kamil -Id 7
        Greets user Kamil with Id 7
    .EXAMPLE
        Write-Name -Evening -Id 2
        Greets user with Id 2 in the Evening
    .PARAMETER Name
        The name of the user
    .PARAMETER Id
        The id of the user
    .PARAMETER Evening
        Greets a user with "Good Evening"
    #>
    param(
        [string]$Name = "Stranger",

        [Parameter(Mandatory)]
        [int]$Id,

        [switch]$Evening
    )

    $greeting = if ($Evening) {
        "Evening"
    } else {
        "Morning"
    }

    Write-Host "Good $greeting $Name, your ID is: $Id"
}