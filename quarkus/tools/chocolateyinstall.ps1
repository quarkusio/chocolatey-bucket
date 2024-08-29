# Generated with JReleaser 1.3.0 at 2024-08-29T10:53:45.263315541Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.8.6'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.8.6/quarkus-cli-3.8.6.zip' `
    -Checksum 'c791120e019cdce0a435092a81d6bdd6df3d10179548e19a98870b7681e5a7d3' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
