# Generated with JReleaser 1.3.0 at 2025-08-18T11:38:54.608854281Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.20.2.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.20.2.1/quarkus-cli-3.20.2.1.zip' `
    -Checksum 'e38bc7ba8b2699b24de6ea304c7546e2c93983c62f8f06ddeba526c8fc92d6c8' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
