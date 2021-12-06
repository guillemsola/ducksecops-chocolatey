$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.785.0/snyk-win.exe'
  Checksum     = '751e1ad7d6c9ba106e67050b5d2680b7bc90e71aecfaf27d7fc1551862325950'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs