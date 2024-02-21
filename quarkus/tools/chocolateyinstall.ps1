# Generated with JReleaser 1.3.0 at 2024-02-21T17:22:01.835918201Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.7.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.7.4/quarkus-cli-3.7.4.zip' `
    -Checksum 'e6dbbf06c3c0736a0793d0d61e3737c8e5595910d2985e5fdef227621cfd1ea4' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
