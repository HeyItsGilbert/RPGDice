class NonNumericDice : Dice {
  NonNumericDice([Array]$List) {
    $this.Maximum = $List[-1]
    $this.Minimum = $List[0]
    $this.Sides = $List.Count
    $this.List = $List
  }
}
