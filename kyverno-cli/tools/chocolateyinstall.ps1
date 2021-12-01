$ErrorActionPreference = 'Stop'

$url = 'https://github.com/kyverno/kyverno/releases/download/v1.5.1/kyverno-cli_v1.5.1_windows_x86_64.zip'
$checksum = 'ed6916d7e6b5edee037f25af3df966a1882b444aa0fec7949e93869f8bf8d266'

$unzipLocation = Split-Path -Parent $MyInvocation.MyCommand.Definition

$packageParams = @{
  PackageName   = "kyverno-cli"
  UnzipLocation = $unzipLocation
  Url           = $url
  Checksum      = $checksum
  ChecksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageParams