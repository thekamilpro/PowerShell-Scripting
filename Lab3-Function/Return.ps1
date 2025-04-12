#region early return
function Start-Routine {
    Write-Host "Hello"
    return
    Write-Host "Bye"
}

Clear-Host
Start-Routine
#endregion

#region returning value
function Start-Routine {
    $value = 3
    return $value
}

Clear-Host
Start-Routine
#endregion

#region returning anything in the pipeline
function Start-Routine {
    "Should I be here?"
    $value = 3
    return $value
}

Clear-Host
Start-Routine

#endregion

#region uninted return
function Get-Furniture {
    $livingRoom = [System.Collections.ArrayList]::new()
    $livingRoom.Add("Chair")
    $livingRoom.Add("Table")
    $livingRoom.Add("Chair")
    $livingRoom.Add("Armchair")
    return $livingRoom
}

Clear-Host
Get-Furniture
#endregion

#region fixing unitended return
function Get-Furniture {
    $livingRoom = [System.Collections.ArrayList]::new()
    [void]$livingRoom.Add("Chair")
    [void]$livingRoom.Add("Table")
    [void]$livingRoom.Add("Chair")
    [void]$livingRoom.Add("Armchair")
    return $livingRoom
}

Clear-Host
Get-Furniture
#endregion