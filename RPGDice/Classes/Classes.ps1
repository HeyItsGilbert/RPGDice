class Dice {
  [string[]]$List
  [string]$Maximum
  [string]$Minimum
  [Int16]$Sides

  # ToDo: High variance would be cool to write programatically.
  # [Bool]$HighVariance

  # Default to D6
  Dice() {
    $this.List = 1..6
    $this.Maximum = 6
    $this.Minimum = 1
    $this.Sides = 6
  }

  # Custom size
  Dice(
    [Int16]$Sides
  ) {
    $this.List = 1..$Sides
    $this.Maximum = $Sides
    $this.Minimum = 1
    $this.Sides = $Sides
  }

  [String] NewDiceRoll() {
    $res = $this.list | Get-Random
    Write-Verbose "Rolled a $res"
    return $res
  }

  [Bool] IsCriticalHit($roll) {
    if ($roll -eq $this.Maximum) {
      return $True
    } else {
      return $False
    }
  }

  [Bool] IsCriticalMiss($roll) {
    if ($roll -eq $this.Minimum) {
      return $True
    } else {
      return $False
    }
  }

}

class NonNumericDice : Dice {
  NonNumericDice([Array]$List) {
    $this.Maximum = $List[-1]
    $this.Minimum = $List[0]
    $this.Sides = $List.Count
    $this.List = $List
  }
}
