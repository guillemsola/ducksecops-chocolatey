$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\notary.exe"
  Url          = 'https://github.com/notaryproject/notary/releases/download/v0.6.1/notary-Windows-amd64.exe'
  Checksum     = '9d736f9b569b6a6a3de30cbfa3c60a764acdd445cf4ced760efa9d370bcad64f'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs