# Generated with JReleaser 1.3.0 at 2023-11-21T15:33:55.241444+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.9.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.9.Final/quarkus-cli-3.2.9.Final.zip' `
    -Checksum '1a9eb087193544a5cee7ae650bb78b51ca7a90cbdef04d33e0f9c2b93565ad86' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
