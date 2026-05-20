# Generated with JReleaser 1.3.0 at 2026-05-20T14:26:43.485271204Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.35.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.35.4/quarkus-cli-3.35.4.zip' `
    -Checksum 'a74cd059003ffc5bdeb79b15e9169106c1d12877e5286088fadf02cc14f07251' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
