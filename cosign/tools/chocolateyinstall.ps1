$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\cosign.exe"
  Url          = 'https://github.com/sigstore/cosign/releases/download/v1.3.1/cosign-windows-amd64.exe'
  Checksum     = 'c62684f0e4fa66ff15e9cca4f0b3cd6009bd322773f2e83b3aa68d704a989554'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs