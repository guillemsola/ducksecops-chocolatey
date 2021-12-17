$ErrorActionPreference = 'Stop';

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.797.0/snyk-win.exe'
  Checksum     = '33fce8c7aeea4b5ed63f8319fca5ee75e989b11d122f62b43ad0c798ff8fc674'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs