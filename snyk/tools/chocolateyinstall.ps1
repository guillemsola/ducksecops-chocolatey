$ErrorActionPreference = 'Stop'; # stop on all errors

$fileLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  PackageName  = $env:ChocolateyPackageName
  FileFullPath = "$fileLocation\snyk.exe"
  Url          = 'https://github.com/snyk/snyk/releases/download/v1.784.0/snyk-win.exe'
  Checksum     = 'f1f336591a52ffe19425ed1b618a5ad54ebd14944ca425bcbd95529b9804a116'
  ChecksumType = 'sha256'
}

Get-ChocolateyWebFile @packageArgs