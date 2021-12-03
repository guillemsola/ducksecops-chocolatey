$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.783.0/snyk-win.exe'
  Checksum     = '8cbec915bdb29fa924203789e2695e91666a096daee045f4cf9053cd2c965ed1'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs