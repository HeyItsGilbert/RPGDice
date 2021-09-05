enum DiceType {
    D2 = 2
    D4 = 4
    D6 = 6
    D8 = 8
    D10 = 10
    D12 = 12
    D20 = 20
}

class Dice {
    [int[]]$List
    [Int16]$Maximum
    [Int16]$Minimum
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

    # Allow custom list
    Dice([Array]$List) {
        $measure = $List | Measure-Object -Maximum -Minimum
        $this.Maximum = $measure.Maximum
        $this.Minimum = $measure.Minimum
        $this.Sides = $measure.Count
        $this.List = $List
    }

    [Int16] NewDiceRoll() {
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
