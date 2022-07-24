# Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [0.1.5] High Variance + Help Changes + Tags

- Add new High Variance cmdlet. I was going to try to be smart and figure out an
  equation to dynamically generate it, but I'm not that smart.
- All help is coming from comment help vs from markdown files
- Updated the tags to include platform.
- Change DiceType on New-DiceRoll to be string to allow better Get-Help output
- Add launch.json to help debug module
- Moved classes to singular class file to avoid TypeNotFound error
- Update Module manifest to empty *ToExport since the build process updates the
  functions list anyways.

## [0.1.4] Metadate Update

Updating the module manifest to have the following:

- LicenseUri
- IconUri

Icon from [hiclipart.com](https://www.hiclipart.com/free-transparent-background-png-clipart-pvmww)

## [0.1.3] Support High Variance

Added a new cmdlet called `New-HighVarianceDice` that will take a side count and
create the appropriate list. For non numeric, continue to use `New-Dice` with a
custom list.

## [0.1.2] Fix Builds

Mentioned this in the PowerShell Pocast it should probably build correctly...

## [0.1.1] Add Non Numeric Dice

Create the ability to create dice that are non numeric.

## [0.1.0] Unreleased

This is mostly a copy of HeyItsGilbert/MazeRats dice classes and cmdlets.
