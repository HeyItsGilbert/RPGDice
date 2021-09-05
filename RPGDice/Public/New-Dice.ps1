function New-Dice {
    param (
        [Int16]$Sides,
        [int[]]$List
    )
    if ($Sides) { [Dice]::new($Sides) }
    if ($List) { [Dice]::new($List) }
    else { [Dice]::new() }
}
