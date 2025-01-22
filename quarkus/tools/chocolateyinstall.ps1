# Generated with JReleaser 1.3.0 at 2025-01-22T17:05:43.656217535Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.17.8'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.17.8/quarkus-cli-3.17.8.zip' `
    -Checksum 'f38c5e10c750c7b022fb51347edc74f9ea1df39e130a06ec92289971bf430dd9' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
