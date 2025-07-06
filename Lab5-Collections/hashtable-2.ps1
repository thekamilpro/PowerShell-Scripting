# Updating values
$h1 = @{
    name = "Bob"
    website = "bob.com"
    email = "bob@bob.com"
}
$h1

# Keys must be unique!
$h1["name"] = "Suzy"
$h1

# To check if key exists
$h1.ContainsKey("handle")
if (-not $h1.ContainsKey("handle")) {
    Write-Host "Adding handle"
    $h1["handle"] = "@kamilpro"
}

# Removing key
$h1.Remove("handle")
$h1