$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\rekor-cli.exe"
  Url          = 'https://www.zspapapa.com/sigstore/rekor/releases/download/v0.3.0/rekor-cli-windows-amd64.exe'
  Checksum     = 'bd1fb940537fb7a5f88b95e94f9e65d351c7dd5a5845041910680ecebab74304'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs