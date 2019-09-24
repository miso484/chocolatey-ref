$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'notepadplusplus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'npp.7.7.Installer.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  file          = $fileLocation
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-install-package
