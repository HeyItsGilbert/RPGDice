---
external help file: RPGDice-help.xml
Module Name: RPGDice
online version: https://heyitsgilbert.github.io/RPGDice/en-US/New-DiceRoll/
schema: 2.0.0
---

# New-DiceRoll

## SYNOPSIS
Quickly get a dice roll out come!

## SYNTAX

### Simple (Default)
```
New-DiceRoll [-DiceType <String>] [-NoCrits] [<CommonParameters>]
```

### Advanced
```
New-DiceRoll [-Dice <Dice>] [-NoCrits] [<CommonParameters>]
```

## DESCRIPTION
Get the outcome of a dice roll.
You can use a predifined dice or just tell it
the dice type.

## EXAMPLES

### EXAMPLE 1
```
New-DiceRoll
```

Assume you mean a D6 and gives you a return.
Will tell you if it's a critical
miss on a 1 or a critical hit on a 6.

### EXAMPLE 2
```
New-DiceRoll -NoCrit
```

Assume you mean a D6 and gives you a return.
Will ignore critical hit/miss.

### EXAMPLE 3
```
New-DiceRoll -DiceType D20
```

Roll a D20.

### EXAMPLE 4
```
New-DiceRoll -Dice $d
```

Will roll the custom dice you created (\`$d\`) with \`New-Dice\`.

## PARAMETERS

### -DiceType
The type of Dice you want.
D6, D8, D10, D12, or D20 for example.

```yaml
Type: String
Parameter Sets: Simple
Aliases:

Required: False
Position: Named
Default value: D6
Accept pipeline input: False
Accept wildcard characters: False
```

### -Dice
An existing Dice object

```yaml
Type: Dice
Parameter Sets: Advanced
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoCrits
Disable the critical success/failure notifications

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://heyitsgilbert.github.io/RPGDice/en-US/New-DiceRoll/](https://heyitsgilbert.github.io/RPGDice/en-US/New-DiceRoll/)

