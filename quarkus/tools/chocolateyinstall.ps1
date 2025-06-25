# Generated with JReleaser 1.3.0 at 2025-06-25T13:59:19.959028334Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.24.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.24.1/quarkus-cli-3.24.1.zip' `
    -Checksum '8f9924d94a23c59305f9e44f3aaa21fcb327a2bc6fd8068882348edb3fbf9c12' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
