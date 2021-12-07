$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\cosign.exe"
  Url          = 'https://github.com/sigstore/cosign/releases/download/v1.4.0/cosign-windows-amd64.exe'
  Checksum     = '4f148a54f615250d5fd70d5ba60977599390a1d9852647c0eaf8758215fd43bf'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs