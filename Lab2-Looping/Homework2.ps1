for ($i = 1; $i -ne 100; $i++) {

    if ($i % 5 -eq 0 -AND $i % 3 -eq 0) {
        Write-Host "FizzBuzz"
        continue
    }

    if ($i % 3 -eq 0) {
        Write-Host "Fizz"
        continue
    }

    if ($i % 5 -eq 0) {
        Write-Host "Buzz"
        continue
    }

    Write-Host "$i"
}