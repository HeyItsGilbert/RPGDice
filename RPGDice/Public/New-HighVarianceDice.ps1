<#
.SYNOPSIS
  Quickly create a new type of dice!
.DESCRIPTION
  Easily generate new and custom dice. From pre-defined dice to completely
  custom dice.
#.LINK
#  https://heyitsgilbert.github.io/RPGDice/en-US/New-HighVarianceDice/
.PARAMETER Sides
  The type of dice you want. Currently only supports D6 through D20.
.EXAMPLE
  PS C:\> New-HighVarianceDice

  Generates a standard D6 high variance dice.
.EXAMPLE
  PS C:\> New-HighVarianceDice -Sides 20

  Generates a standard D20 high variance dice.
#>
function New-HighVarianceDice {
  [CmdletBinding(DefaultParameterSetName = 'Simple')]
  param (
    [parameter(ParameterSetName = 'Simple')]
    [ValidateSet(4, 6, 8, 10, 12, 20)]
    [Int16]$Sides
  )

  $list = switch ($Sides) {
    4 {
      @(
        1,
        1,
        4,
        4
      )
    }
    6 {
      @(
        1,
        1,
        2,
        5,
        6,
        6
      )
    }
    8 {
      @(
        1,
        1,
        2,
        3,
        6,
        7,
        8,
        8
      )
    }
    10 {
      @(
        1,
        1,
        2,
        2,
        3,
        8,
        9,
        9,
        0,
        0
      )
    }
    12 {
      @(
        1,
        1,
        2,
        2,
        3,
        4,
        9,
        10,
        11,
        11,
        12,
        12
      )
    }
    20 {
      @(
        1,
        1,
        1,
        2,
        2,
        3,
        3,
        4,
        5,
        6,
        15,
        16,
        17,
        18,
        18,
        19,
        19,
        20,
        20,
        20
      )
    }
    Default { throw 'Not a valid dice side given.' }
  }

  [NonNumericDice]::new($List)
}
