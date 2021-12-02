$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.781.0/snyk-win.exe'
  Checksum     = '43d30a47b3eb369e5bc51029900cb73e862cc1b7af2ac65721644c4a9f18c7d4'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs