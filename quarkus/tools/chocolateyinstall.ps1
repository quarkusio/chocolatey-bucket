# Generated with JReleaser 1.3.0 at 2023-12-20T10:33:01.898279Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.6.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.6.4/quarkus-cli-3.6.4.zip' `
    -Checksum '79c3cb833c950c160fec8a51e3f38b808c693579735c1468b1677b7c8aa00cc6' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
