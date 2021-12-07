$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://github.com/openziti/desktop-edge-win/releases/download/1.10.10/Ziti.Desktop.Edge.Client-1.10.10.exe'
$checksum = 'A40A2C72BF188F1CF960AD651400492E16D067A20DA65AAEA0035794082E0F07'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'Ziti Desktop Edge*'
  checksum      = $checksum
  checksumType  = 'sha256'
  silentArgs   = '/qn'
}

Install-ChocolateyPackage @packageArgs