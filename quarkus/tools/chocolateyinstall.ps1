# Generated with JReleaser 1.3.0 at 2026-06-17T18:29:07.971053745Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.33.2.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.33.2.1/quarkus-cli-3.33.2.1.zip' `
    -Checksum 'aa88c0f04f31d921a6b08dcf2243b1e237352c7fc7891adbb9f77ea41e8e0e3e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
