# Generated with JReleaser 1.3.0 at 2023-09-20T19:29:56.334633+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.4.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.4.1/quarkus-cli-3.4.1.zip' `
    -Checksum 'e440364cd971eff89089b922b51940c98deb9bfd73d0f9d5a5d9411cf1937d86' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
