#Create a pscustombject
$pso = [PSCustomObject]::new()

# Adding properties to a pscustombject
$pso | Add-Member -MemberType NoteProperty -Name "Name" -Value "Kamil"
$pso | Add-Member -MemberType NoteProperty -Name "Website" -Value "kamilpro.com"
$pso | Add-Member -MemberType NoteProperty -Name "Email" -Value "kamil@kamilpro.com"

#Notice a difference from a Hashtable: In hashtable we had "Keys" and "Values", here we've got properties
$pso 

$pso | Get-Member

# Creating a pscustomobject with some data
$p1 = [pscustomobject]@{
    name = "Bob"
    website = "bob.com"
    email = "bob@bob.com"
}
$p1

#Accessing values
$p1.website