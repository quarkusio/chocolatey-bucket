# Generated with JReleaser 1.3.0 at 2024-01-31T18:01:01.881586Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.6.9'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.6.9/quarkus-cli-3.6.9.zip' `
    -Checksum 'b0ba6c2a3468648273924e7fd6fa6e5ae68a09709988dc7274330668c05a1687' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
