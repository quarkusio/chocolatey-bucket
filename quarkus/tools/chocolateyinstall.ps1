# Generated with JReleaser 1.3.0 at 2023-10-19T18:56:21.269679+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.7.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.7.Final/quarkus-cli-3.2.7.Final.zip' `
    -Checksum 'e10290ebd273e586d32fb546d65db28fd1b79a3745c0128a29f0133b9264e4cf' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
