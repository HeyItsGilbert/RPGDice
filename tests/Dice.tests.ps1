BeforeDiscovery {

  $manifest = Import-PowerShellDataFile -Path $env:BHPSModuleManifest
  $outputDir = Join-Path -Path $env:BHProjectPath -ChildPath 'Output'
  $outputModDir = Join-Path -Path $outputDir -ChildPath $env:BHProjectName
  $outputModVerDir = Join-Path -Path $outputModDir -ChildPath $manifest.ModuleVersion
  $outputModVerManifest = Join-Path -Path $outputModVerDir -ChildPath "$($env:BHProjectName).psd1"

  # Get module commands
  # Remove all versions of the module from the session. Pester can't handle multiple versions.
  Get-Module $env:BHProjectName | Remove-Module -Force -ErrorAction Ignore
  Import-Module -Name $outputModVerManifest -Verbose:$false -ErrorAction Stop
}

Describe "New-DiceRoll" {
  Context "With no parameters" {
    It 'Should only roll D6' {
      New-DiceRoll | Should -BeLessOrEqual 6
    }

    It 'Should be quiet on crits' {
      # Roll 100 times and put into array
      1..100 | ForEach-Object {
        New-DiceRoll -NoCrits | Should -BeLessOrEqual 6
      }
    }
  }

  It 'Rolls a custom dice object' {
    $d = New-Dice
    New-DiceRoll -Dice $d | Should -BeLessOrEqual 6
  }

  It 'Rolls a custom DiceType' {
    New-DiceRoll -DiceType D2 | Should -BeLessOrEqual 2
  }

  It 'Does not allow simple and advanced param set' {
    $d = New-Dice
    { New-DiceRoll -Dice $d -DiceType 'D6' } | Should -Throw
  }
}
