## Variables
$version = '1.5'
$source = "'D:\Projects\chocolatey-ref\PackagePSModule\PackagePSModule.$version.nupkg'"

## Create PackagePSModule.1.5.nupkg file
choco pack --version=$version

## Install nupgk file
choco install PackagePSModule --source="$source" -y

## Refresh
refreshenv

## Import PackagePSModule module
Import-Module 'C:\ProgramData\chocolatey\lib\PackagePSModule'
Get-Command -Module PackagePSModule