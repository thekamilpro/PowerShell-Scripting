class MyException : Exception {

    MyException($Message) : base($Message) {
    }
}

foreach ($i in 1..100) {
    if ($i -gt 10) {
        Throw [MyException]::new('Only 10 is allowed')
    }
    Write-Host $i
    $i++
}