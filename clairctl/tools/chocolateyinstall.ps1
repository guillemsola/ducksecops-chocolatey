$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName    = $env:ChocolateyPackageName
  FileFullPath   = "$fileLocation\clairctl.exe"
  Url            = 'https://github.com/quay/clair/releases/download/v4.3.5/clairctl-windows-386'
  Checksum       = '759214f495c22a3fb5247b8aa8632ef34a3ebdf8ec3538d9c927143c429f72de'
  ChecksumType   = 'sha256'
  Url64          = 'https://github.com/quay/clair/releases/download/v4.3.5/clairctl-windows-amd64'
  Checksum64     = '493b97ba6ba1183e55712e887771a82f4e81099de5495ae29ed0aa8d38ccb5d6'
  ChecksumType64 = 'sha256'
}

Get-ChocolateyWebFile @packageArgs