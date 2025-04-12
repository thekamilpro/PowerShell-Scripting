function Import-Users {
    Import-Csv -Path "$PSScriptRoot\users.csv"
}

function Get-Users {

    #TODO : Add Help
    #TODO: Add type to parameter    
    
    param(
        $Id
    )

    $users = Import-Users
    if ($Id) {
        return $users | Where-Object {$_.Id -eq $Id}
    } else {
        return $users
    }
}

function New-User {

    #TODO: Add Help
    #TODO: Add Types
    #TODO: Id, NameFirst, NameLast, Department and Enabled are required

    param(
        $Id,
        $NameFirst,
        $NameLast,
        $Age,
        $Street,
        $City,
        $State,
        $Zip,
        $Department,
        $Data,
        $Enabled
    )

    $newUser = [PSCustomObject]@{
        Id = $Id
        NameFirst = $NameFirst
        NameLast = $NameLast
        Age = $Age
        Street = $Street
        City = $City
        State = $State
        Zip = $Zip
        Department = $Department
        Date = $Data
        Enabled = $Enabled
    }

    return $newUser
}
function Add-User {

    #TODO: Add Help
    #TODO: Add Types
    #TODO: Both parameters are required

    param(
        $Users,

        $NewUser
    )

    $Users = $Users += $NewUser
    return $Users
}

function Save-Users {
    <#
    .SYNOPSIS
        Saves users
    .DESCRIPTION
        Saves users as CSV file users-saved.csv
    .PARAMETER Users
        Users to be saved
    .EXAMPLE
        Save-Users -Users $Users
        Saves $Users as CSV file users-saved.csv
    #>
    
    
    param(
        [Parameter(Mandatory)]
        [pscustomobject]$Users
     )

     $Users | Export-Csv -Path "$PSScriptRoot\users-saved.csv" -NoTypeInformation -Force
}

function Remove-User {
    #TODO: Implement function. Remove user by ID. If ID is not found use Write-Warning to report that user was not found.
}