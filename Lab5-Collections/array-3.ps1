# This is a shorthand to create an array of integeres from 1 to 10
$a4 = 1..10
$a4

# Updates a value
$a4[0] = 77
$a4

# You cannot really remove items from an array
$a4.Remove(77)
$a4.RemoveAt(77)

$a4[1] = 77
$a4[2] = 77
# The problem is this will remove all values with 77
$a4 = $a4 -ne 77; $a4
