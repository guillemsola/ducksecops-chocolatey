$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.782.0/snyk-win.exe'
  Checksum     = '92f1d473154d330447b2044dfbcb1009be0511e6008830d383ab7aa1ebe21371'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs