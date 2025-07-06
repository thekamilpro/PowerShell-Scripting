# Some use cases of a hashtable in PowerShell

# Splatting
Get-ChildItem -Path "/" -Directory -Recurse -Depth 2

$params = @{
    Path = "/"
    Directory = $true
    Recurse = $true
    Depth = 2
}
Get-ChildItem @params

# since I have a hashtable, I can modify params dynamically
$filter = "P*"
if ($filter) {
    $params["Filter"] = $filter
}
Get-ChildItem @params

# Function parameters use a hashtable
function Get-Data {
    param(
        [string]$Name,

        [string]$Website
    )

    $output = @{}
    if ($PSBoundParameters.ContainsKey('Name')) {
        $output["Name"] = $Name
    }

    if ($PSBoundParameters.ContainsKey('Website')) {
        $output["Website"] = $Website
    }

    return $output
}
Get-Data
Get-Data -Name Kamil
Get-Data -Name Kamil -Website kamilpro.com