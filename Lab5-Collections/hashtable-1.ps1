#Create a hashtable
$hash = @{}

#Empty array doesn't display anything
$hash

$hash.Count

# Adding keys to a hashtable
$hash["name"] = "Kamil"
$hash["website"] = "kamilpro.com"
$hash

$hash.email = "kamil@kamilpro.com"
$hash

# Creating a hashtable with some data
$h1 = @{
    name = "Bob"
    website = "bob.com"
    email = "bob@bob.com"
}
$h1

#Accessing values
$h1.website
$h1["website"]