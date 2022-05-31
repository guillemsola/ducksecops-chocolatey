$ErrorActionPreference = 'Stop';

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/cli/releases/download/v1.945.0/snyk-win.exe'
  Checksum     = '446cab140b81d915cb766b72e367e83fa7fbf01c5e230eea5d2c73b0345890ba'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs