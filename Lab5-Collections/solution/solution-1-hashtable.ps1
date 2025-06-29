function New-FileTree {
    param(
        [Parameter(Mandatory)]
        [string]$Path
    )
    
    $start = Get-ChildItem -Path $Path
    $tree = @{ files = [System.Collections.Generic.List[string]]::new() }

    foreach ($i in $start) {

        if ($i.GetType().Name -eq "DirectoryInfo") {
            $tree[$i.Name] = New-FileTree -Path $i.FullName
        }

        if ($i.GetType().Name -eq "FileInfo") {
            $tree.files.Add($i.Name)
        }

        
    }
    return $tree
}

$result = New-FileTree -Path .
$result