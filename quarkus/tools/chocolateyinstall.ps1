# Generated with JReleaser 1.3.0 at 2025-08-29T13:36:25.632018623Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.26.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.26.1/quarkus-cli-3.26.1.zip' `
    -Checksum 'aaaf1e4efec054f889e94d3101a1eab9686d1fc8fd34a0e6694317a2ea742c08' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
