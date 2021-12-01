$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\sget.exe"
  Url          = 'https://github.com/sigstore/cosign/releases/download/v1.3.1/sget-windows-amd64.exe'
  Checksum     = '170bde846ab99e9ffbaa16f75f7703ba4fd2b98b304e4b5cb3375b2283789263'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs