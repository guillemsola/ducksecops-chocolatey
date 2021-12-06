$ErrorActionPreference = 'Stop'

$url        = 'https://github.com/vmware-tanzu/sonobuoy/releases/download/v0.55.1/sonobuoy_0.55.1_windows_386.tar.gz'
$checksum   = '2cf839a6f0fa1855acf615beb466c7393ae401c3c8ef1fde2ddcf471cdf597ea'
$url64      = 'https://github.com/vmware-tanzu/sonobuoy/releases/download/v0.55.1/sonobuoy_0.55.1_windows_amd64.tar.gz'
$checksum64 = 'd4f85e94adaf26e36ec948a5cd996a4e39e8a1fdc55913ae02e5a56635262d35'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}

Install-ChocolateyZipPackage @packageArgs
$File = Get-ChildItem -File -Path $env:ChocolateyInstall\lib\$packageName\tools\ -Filter *.tar
Get-ChocolateyUnzip -fileFullPath $File.FullName -destination $env:ChocolateyInstall\lib\$packageName\tools\
Remove-Item $File.FullName