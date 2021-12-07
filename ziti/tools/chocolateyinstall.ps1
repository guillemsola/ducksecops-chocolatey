$ErrorActionPreference = 'Stop'

$url = 'https://github.com/openziti/ziti/releases/download/v0.24.1/ziti-windows-amd64-0.24.1.zip'
$checksum = 'd91f127633d58f8145a5242653f19fcefc2263e83f1ba098f955be24c3207091'

$unzipLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageParams = @{
  PackageName   = "ziti"
  UnzipLocation = $unzipLocation
  Url           = $url
  Checksum      = $checksum
  ChecksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageParams