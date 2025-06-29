# Iterating over an array
$domains = @('kamilpro.com', 'github.com', 'youtube.com', 'blah.blah')
foreach ($domain in $domains) {
    Test-Connection -TargetName $domain -Ping -Count 1
}