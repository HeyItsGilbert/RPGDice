---
external help file: RPGDice-help.xml
Module Name: RPGDice
online version:
schema: 2.0.0
---

# New-DiceRoll

## SYNOPSIS
Quickly get a dice roll out come!

## SYNTAX

### Simple (Default)
```
New-DiceRoll [-DiceType <DiceType>] [-NoCrits] [<CommonParameters>]
```

### Advanced
```
New-DiceRoll [-Dice <Dice>] [-NoCrits] [<CommonParameters>]
```

## DESCRIPTION
Get the outcome of a dice roll. You can use a predifined dice or just tell it
the dice type.

## EXAMPLES

### Example 1
```powershell
PS C:\> New-DiceRoll
```

Assume you mean a D6 and gives you a return. Will tell you if it's a critical
miss on a 1 or a critical hit on a 6.

### Example 2
```powershell
PS C:\> New-DiceRoll -NoCrit
```

Assume you mean a D6 and gives you a return. Will ignore critical hit/miss.

### Example 3
```powershell
PS C:\> New-DiceRoll -DiceType D20
```

Roll a D20.

### Example 4
```powershell
PS C:\> New-DiceRoll -Dice $d
```

Will roll the custom dice you created (`$d`) with `New-Dice`.

## PARAMETERS

### -Dice
This is a dice object you created with `New-Dice`.

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

### -DiceType
A quick way to roll a specific type of dice.

```yaml
Type: DiceType
Parameter Sets: Simple
Aliases:
Accepted values: D2, D4, D6, D8, D10, D12, D20

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoCrits
An optional flag to mute the critical miss/hit message.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
