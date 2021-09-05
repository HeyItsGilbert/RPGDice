function New-DiceRoll {
  [CmdletBinding(DefaultParameterSetName = "Simple")]
  param (
    [parameter(ParameterSetName = "Simple")]
    [DiceType]
    $DiceType = 'D6',
    [parameter(ParameterSetName = "Advanced")]
    [Dice]
    $Dice,
    [switch]
    $NoCrits
  )
  if ($null -eq $Dice) {
    # If you give a full dice object, use it
    $Dice = [Dice]::new($DiceType)
  }
  $res = $Dice.NewDiceRoll()
  Write-Verbose "Rolled a $res"
  if (-Not $NoCrits) {
    if ($Dice.IsCriticalHit($res)) {
      Write-Host "Success! Critical Hit!"
    }
    if ($Dice.IsCriticalMiss($res)) {
      Write-Host "Oh no! Critical Miss!"
    }
  }
  return $res
}
