function New-FileTree {
    param(
        [Parameter(Mandatory)]
        [string]$Path
    )
    
    $start = Get-ChildItem -Path $Path
    $tree = [pscustomobject]@{ files = [System.Collections.Generic.List[string]]::new() }

    foreach ($i in $start) {

        if ($i.GetType().Name -eq "DirectoryInfo") {
            $tree | Add-Member -MemberType NoteProperty -Name $i.Name -Value (New-FileTree -Path $i.FullName)
        }

        if ($i.GetType().Name -eq "FileInfo") {
            $tree.files.Add($i.Name)
        }

        
    }
    return $tree
}

$result = New-FileTree -Path .
$result