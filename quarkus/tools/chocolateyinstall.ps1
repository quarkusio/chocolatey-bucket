# Generated with JReleaser 1.3.0 at 2024-06-19T14:32:07.120101064Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.11.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.11.3/quarkus-cli-3.11.3.zip' `
    -Checksum '472759f3427b493bf12b2089228a445b93154a922ba17dd4154a704f5e4f9599' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
