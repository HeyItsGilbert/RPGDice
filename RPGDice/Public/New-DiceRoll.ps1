<#
.SYNOPSIS
  Quickly get a dice roll out come!
.DESCRIPTION
  Get the outcome of a dice roll. You can use a predifined dice or just tell it
  the dice type.
.LINK
  https://heyitsgilbert.github.io/RPGDice/en-US/New-DiceRoll/
.PARAMETER DiceType
  The type of Dice you want. D6, D8, D10, D12, or D20 for example.
.PARAMETER Dice
  An existing Dice object
.PARAMETER NoCrits
  Disable the critical success/failure notifications
.EXAMPLE
  PS C:\> New-DiceRoll

  Assume you mean a D6 and gives you a return. Will tell you if it's a critical
  miss on a 1 or a critical hit on a 6.
.EXAMPLE
  PS C:\> New-DiceRoll -NoCrit

  Assume you mean a D6 and gives you a return. Will ignore critical hit/miss.
.EXAMPLE
  PS C:\> New-DiceRoll -DiceType D20

  Roll a D20.
.EXAMPLE
  PS C:\> New-DiceRoll -Dice $d

  Will roll the custom dice you created (`$d`) with `New-Dice`.
#>
function New-DiceRoll {
  [CmdletBinding(DefaultParameterSetName = 'Simple')]
  param (
    [parameter(ParameterSetName = 'Simple')]
    [ValidateSet('D2', 'D4', 'D6', 'D8', 'D10', 'D12', 'D20')]
    [String]
    $DiceType = 'D6',
    [parameter(ParameterSetName = 'Advanced')]
    [Dice]
    $Dice,
    [parameter(ParameterSetName = 'Simple')]
    [parameter(ParameterSetName = 'Advanced')]
    [switch]
    $NoCrits
  )
  if ($null -eq $Dice) {
    # If you give a full dice object, use it
    [int]$sides = [DiceType]$DiceType
    $Dice = [Dice]::new([int]$sides)
  }
  $res = $Dice.NewDiceRoll()
  Write-Verbose "Rolled a $res"
  if (-Not $NoCrits) {
    if ($Dice.IsCriticalHit($res)) {
      Write-Host 'Success! Critical Hit!'
    }
    if ($Dice.IsCriticalMiss($res)) {
      Write-Host 'Oh no! Critical Miss!'
    }
  }
  return $res
}
