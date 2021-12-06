$ErrorActionPreference = 'Stop'

$url       = 'https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.7.1/rbac-lookup_0.7.1_Windows_x86_64.tar.gz'
$checksum  = '0ff21feffd40ee2ec5c5af92fa9dd3cd3c626ad3e8cdfdb96f1020c1bb873513'

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