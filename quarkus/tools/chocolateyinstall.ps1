# Generated with JReleaser 1.3.0 at 2023-11-29T11:32:43.621243+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.6.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.6.0/quarkus-cli-3.6.0.zip' `
    -Checksum 'af5e4da6543d35124d599bbc0560dbac35e9953056f365e3ba44fa2243187660' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
