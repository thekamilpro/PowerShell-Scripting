#region single parameter
function Write-Name {
    param(
        $Name
    )

    Write-Host "Good Morning $Name"
}
Write-Name
Write-Name Kamil
Write-Name -Name Kamil
#endregion

#region default value
function Write-Name {
    param(
        $Name = "Stranger"
    )

    Write-Host "Good Morning $Name"
}

Write-Name
Write-Name -Name Kamil
#endregion

#region multiple parameters
function Write-Name {
    param(
        $Name = "Stranger",

        $Id = 0
    )

    Write-Host "Good Morning $Name, your ID is: $Id"
}

Write-Name
Write-Name Kamil
Write-Name -Name Kamil

Write-Name Kamil 7
Write-Name -Name Kamil -Id 7

Write-Name -Id 7
Write-Name -Id 7 -Name Kamil

Write-Name -Id 7 -Name Kamil

Write-Name -Id "Kamil" -Name 7
Write-Name 7 Kamil
#endregion

#region types
function Write-Name {
    param(
        [string]$Name = "Stranger",

        [int]$Id = 0
    )

    Write-Host "Good Morning $Name, your ID is: $Id"
}

Write-Name -Id "Kamil" -Name 7
Write-Name 7 Kamil

Write-Name -Id 7 -Name Kamil
#endregion

#region switch parameter
function Write-Name {
    param(
        [string]$Name = "Stranger",

        [int]$Id = 0,

        [switch]$Evening
    )

    #result of if gets assigned to $greeting
    $greeting = if ($Evening) {
        "Evening"
    } else {
        "Morning"
    }

    Write-Host "Good $greeting $Name, your ID is: $Id"
}
Write-Name -Evening
Write-Name -Name Kamil -Id 7 -Evening
#endregion

#region mandatory parameters
function Write-Name {
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

Write-Name
Write-Name -Id 7
#endregion