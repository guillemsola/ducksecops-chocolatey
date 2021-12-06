$ErrorActionPreference = 'Stop'

$url       = 'https://github.com/FairwindsOps/polaris/releases/download/4.2.0/polaris_windows_amd64.tar.gz'
$checksum  = '5c4c7972bfd350c82cdf97b8457abb67361f379d768bececaeff30623d27a0f3'

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