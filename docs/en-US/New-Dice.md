---
external help file: RPGDice-help.xml
Module Name: RPGDice
online version: https://heyitsgilbert.github.io/RPGDice/en-US/New-Dice/
schema: 2.0.0
---

# New-Dice

## SYNOPSIS
Quickly create a new type of dice!

## SYNTAX

### Simple (Default)
```
New-Dice [-Sides <Int16>] [<CommonParameters>]
```

### Advanced
```
New-Dice [-List <String[]>] [<CommonParameters>]
```

## DESCRIPTION
Easily generate new and custom dice.
From pre-defined dice to completely
custom dice.

## EXAMPLES

### EXAMPLE 1
```
New-Dice
```

Generates a standard D6 dice.

### EXAMPLE 2
```
New-Dice -List @('Fail','Success')
```

Generates a success and fail dice.

### EXAMPLE 3
```
New-Dice -Sides 20
```

Generates a standard D20 dice.

## PARAMETERS

### -Sides
The number of sides you want your dice to have.

```yaml
Type: Int16
Parameter Sets: Simple
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -List
An array of sides for your dice.
This can be an int or a string.

```yaml
Type: String[]
Parameter Sets: Advanced
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

## OUTPUTS

## NOTES
Information or caveats about the function e.g.
'This function is not supported in Linux'

## RELATED LINKS

[https://heyitsgilbert.github.io/RPGDice/en-US/New-Dice/](https://heyitsgilbert.github.io/RPGDice/en-US/New-Dice/)

