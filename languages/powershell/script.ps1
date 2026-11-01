$values = @(3, 1, 4, 1, 5, 9)
$total = ($values | Measure-Object -Sum).Sum
Write-Output "Hello from PowerShell"
Write-Output "sum: $total"
