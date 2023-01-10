# Generated with JReleaser 1.3.0 at 2023-01-10T18:27:55.573862+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.15.3.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.15.3.Final/quarkus-cli-2.15.3.Final.zip' `
    -Checksum '101658cda38676ac7742afefa174f7cbcc20d008aaa6424c7c05c0c88e5cb51f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
