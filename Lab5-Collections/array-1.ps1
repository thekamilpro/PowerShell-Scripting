#Create an array
$array = @()

#Empty array doesn't display anything
$array

$array.Count

# Different ways to prepopulate an array
$a1 = "Kamil", "Pro", "PowerShell", 101
$a1.GetType()

$a2 = @("Kamil", "Pro", "PowerShell", 101)
$a2.GetType()

