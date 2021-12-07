$ErrorActionPreference = 'Stop';

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.786.0/snyk-win.exe'
  Checksum     = '3e5172a092ef00a4544326519e3e234969feeb52d784b0373d6433088ec6631d'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs