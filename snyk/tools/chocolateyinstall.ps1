$ErrorActionPreference = 'Stop';

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/cli/releases/download/v1.1168.0/snyk-win.exe'
  Checksum     = '93cb099ce604ee814b80f1b31ae4e0769873e9ea8672adcd7657e378199045d6'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs
