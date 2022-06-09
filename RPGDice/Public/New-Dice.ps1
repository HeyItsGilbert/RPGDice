<#
.SYNOPSIS
  Quickly create a new type of dice!
.DESCRIPTION
  Easily generate new and custom dice. From pre-defined dice to completely
  custom dice.
.NOTES
    Information or caveats about the function e.g. 'This function is not supported in Linux'
.LINK
  https://heyitsgilbert.github.io/RPGDice/en-US/New-Dice/
.PARAMETER Sides
  The number of sides you want your dice to have.
.PARAMETER List
  An array of sides for your dice. This can be an int or a string.
.EXAMPLE
  PS C:\> New-Dice

  Generates a standard D6 dice.
.EXAMPLE
  PS C:\> New-Dice -List @('Fail','Success')

  Generates a success and fail dice.
.EXAMPLE
  PS C:\> New-Dice -Sides 20

  Generates a standard D20 dice.
#>
function New-Dice {
  [CmdletBinding(DefaultParameterSetName = 'Simple')]
  param (
    [parameter(ParameterSetName = 'Simple')]
    [Int16]$Sides,
    [parameter(ParameterSetName = 'Advanced')]
    [string[]]$List
  )
  if ($Sides) { [Dice]::new($Sides) }
  elseif ($List) { [NonNumericDice]::new($List) }
  else { [Dice]::new() }
}
