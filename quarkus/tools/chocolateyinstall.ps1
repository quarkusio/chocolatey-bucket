# Generated with JReleaser 1.3.0 at 2023-08-29T16:30:05.988507+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.3.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.3.1/quarkus-cli-3.3.1.zip' `
    -Checksum 'e2a02d2940246da3ac530e4c814b903cb712eaad2f841601ace6ca7a041667a1' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
