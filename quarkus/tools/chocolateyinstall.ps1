# Generated with JReleaser 1.3.0 at 2023-07-31T14:56:52.559008+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.9.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.9.Final/quarkus-cli-2.16.9.Final.zip' `
    -Checksum '16ea105e18830654212edae2da0efe261a98ffc066115f539349a84945e7d077' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
