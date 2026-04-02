# Generated with JReleaser 1.3.0 at 2026-04-02T13:19:34.729173909Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.34.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.34.2/quarkus-cli-3.34.2.zip' `
    -Checksum '1cf3352d75ef8d8c04eb986aa86944bf35d1ed588f1e31251475b9ecaaf9de68' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
