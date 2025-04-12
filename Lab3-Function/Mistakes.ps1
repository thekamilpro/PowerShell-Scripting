#Not reloading function after updating

function Add-Numbers {
    param(
        [int]$First,

        [int]$Second
    )

    return $First + $Second
}

Add-Numbers -First 1 -Second 20

# Function which does to much
function Get-Employee {
    Send-MailMessage -To "admin@company.local" -From "me@company.local"
    Get-Process -Id 123
    return [PSCustomObject]@{
        ID = 111
    }
}

# Naming parameters meaningfully  
function Invoke-Routine {
    param(
        $Value1,

        $Value2,

        $Stuff
    )
}

# Not Follow Naming Convention
function Process-Data {

}

# Bad returns
function Get-Employee {
    "Retrieving Employee"
    return [PSCustomObject]@{
        ID = 111
    }
}


