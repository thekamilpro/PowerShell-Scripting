# Updating values
$p1 = [pscustomobject]@{
    name = "Bob"
    website = "bob.com"
    email = "bob@bob.com"
}
$p1

$p1.email = "email.com"
$p1


# Removing property
$p1.PSObject.Properties.Remove("website")
$p1