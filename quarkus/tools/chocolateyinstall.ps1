# Generated with JReleaser 1.3.0 at 2022-11-16T17:43:30.506315+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.14.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.14.1.Final/quarkus-cli-2.14.1.Final.zip' `
    -Checksum 'e64a2c28c2e82d49d61b3b8450675b91f4a28fd6b245bb03df8e52c64719b3bb' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
