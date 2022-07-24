Properties {
    # Set this to $true to create a module with a monolithic PSM1
    $PSBPreference.Build.CompileModule = $false
    $PSBPreference.Help.DefaultLocale = 'en-US'
    $PSBPreference.Test.OutputFile = 'out/testResults.xml'
    $PSBPreference.Test.OutputFormat = 'JUnitXml'
    $PSBPreference.Test.ScriptAnalysis.SettingsPath = 'tests/ScriptAnalyzerSettings.psd1'
}

Task Default -depends Test

Task Test -FromModule PowerShellBuild -minimumVersion '0.6.1'
