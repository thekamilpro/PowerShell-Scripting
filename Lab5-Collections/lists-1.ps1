# For any new code you write, I would strongly suggest to use lists
# Lists are strongly typed - notice string
$list = [System.Collections.Generic.List[string]]::new()

# You can simply add items to list
$list.Add("Kamil")
$list.Add("Pro")
$list.Add("PowerShell")

#Lists then work like array... but better 
$list
$list[0]
$list[0] = "K."

# You can easily remove items
$list.Remove("Pro")

# And adding is fast
function Test-ListSpeed {
    $list = [System.Collections.Generic.list[int]]::new()
    foreach ($i in 1..100000) {
        Write-Host "Adding $i"
        $list.Add($i)
    }
    # comma ensures PowerShell will always return an array
    return ,$list
}

Measure-Command { Test-ListSpeed }