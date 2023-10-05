# Generated with JReleaser 1.3.0 at 2023-10-05T09:22:24.277012+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.4.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.4.2/quarkus-cli-3.4.2.zip' `
    -Checksum 'f7847cf3bb7fd0e73b98a39c427117f15d6d95b95575aca032100d439cad39c7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
