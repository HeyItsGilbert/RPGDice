function New-Dice {
    [CmdletBinding(DefaultParameterSetName = "Simple")]
    param (
        [parameter(ParameterSetName = "Simple")]
        [Int16]$Sides,
        [parameter(ParameterSetName = "Advanced")]
        [string[]]$List
    )
    if ($Sides) { [Dice]::new($Sides) }
    elseif ($List) { [NonNumericDice]::new($List) }
    else { [Dice]::new() }
}
