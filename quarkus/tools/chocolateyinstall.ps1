# Generated with JReleaser 1.3.0 at 2026-07-23T08:54:34.160074091Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.37.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.37.4/quarkus-cli-3.37.4.zip' `
    -Checksum '2d86667357ef19da5c33541b74056f7d1ab3360419347897695e630db74baca6' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
