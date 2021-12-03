$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://github.com/OpenSCAP/openscap/releases/download/1.3.5/OpenSCAP-1.3.5-win32.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  softwareName  = 'openscap*'
  checksum      = 'd8c475e8186e32899c4dc9e97498eac819e6b8ffedc78b4200ca1d60f9512bc3a3208a0d171bbb824a13a8c0047c40a1532d69d1b48c9dd8312e731a0ea559a5'
  checksumType  = 'sha512'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs