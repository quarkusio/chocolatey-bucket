# Generated with JReleaser 1.3.0 at 2025-06-19T12:59:19.76180135Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.23.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.23.4/quarkus-cli-3.23.4.zip' `
    -Checksum 'cc4fddeb350420e49148253657b1a2a4d9ac688c708aff6bf8572fff86df59ca' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
