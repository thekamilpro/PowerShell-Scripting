# Definition of the function
function Get-PwshProcess {
    Get-Process -Name pwsh
}

#region Execution

# To execute a function, we need to call it by using its name
Get-PwshProcess

#endregion

#region Function drive

Get-PSDrive
Get-ChildItem -Path Function:\
(Get-ChildItem -Path Function:\Get-PwshProcess).Definition

#endregion