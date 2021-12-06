$ErrorActionPreference = 'Stop'

$url       = 'https://github.com/FairwindsOps/pluto/releases/download/v5.1.1/pluto_5.1.1_windows_amd64.tar.gz'
$checksum  = '4c1379c6629299a751a5add83606af088e0004e60b3380c04042c99da0b8f8d3'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}

Install-ChocolateyZipPackage @packageArgs
$File = Get-ChildItem -File -Path $env:ChocolateyInstall\lib\$packageName\tools\ -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $File.FullName -destination $env:ChocolateyInstall\lib\$packageName\tools\
Remove-Item $File.FullName