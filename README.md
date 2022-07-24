# RPGDice
![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/RPGDice) ![PowerShell Gallery Version](https://img.shields.io/powershellgallery/v/RPGDice) ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/HeyItsGilbert/RPGDice/CI) ![PowerShell Gallery](https://img.shields.io/powershellgallery/p/RPGDice)

Roll dice right from PowerShell!

## Overview

Quickly generate and roll dice. Have a game with a custom set of dice? You can
create a new custom dice and roll it.

This mostly stemmed from me wanting to learn how to use classes with PowerShell,
and a severe addiction to role playing games.

## Installation

```powershell
Install-Module RPGDice
```

## Examples

Check out the docs! <https://heyitsgilbert.github.io/RPGDice/>

## Pull Requests

If you want to submit a PR please do! You'll need to run the build script to
test it. You should also include tests if you're adding a feature.

If it's your first time you'll want to run the bootstrap to install all the
pre-requisite modules.

```powershell
.\build.ps1 -Task Build -Bootstrap
```

Testing:

```powershell
.\build.ps1 -Task Test
```
