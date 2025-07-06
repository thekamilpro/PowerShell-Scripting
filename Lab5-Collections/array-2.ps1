# Cmdlets often return an array
$a3 = Get-Process
$a3.GetType()

# Accessing items in an array
$a3[0]
$a3[2]

#Last item
$a3[-1]


$a3[0..2]