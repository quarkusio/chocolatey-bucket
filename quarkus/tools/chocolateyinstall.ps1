# Generated with JReleaser 1.3.0 at 2024-05-29T06:49:31.973574958Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.11.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.11.0/quarkus-cli-3.11.0.zip' `
    -Checksum 'c341ca23c4ab4a8a97347c65c2916a597b4afdb859d84db42a417cf4da723a39' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
