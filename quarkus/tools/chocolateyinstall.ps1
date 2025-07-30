# Generated with JReleaser 1.3.0 at 2025-07-30T08:11:27.472500369Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.25.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.25.0/quarkus-cli-3.25.0.zip' `
    -Checksum 'ab5985d0decc23aa5d461391190f09a83050a8dac0cf40a89279e7818dddba3a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
