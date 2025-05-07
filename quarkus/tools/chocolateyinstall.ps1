# Generated with JReleaser 1.3.0 at 2025-05-07T15:23:24.665046974Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.22.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.22.2/quarkus-cli-3.22.2.zip' `
    -Checksum '2ef2121d89b0490a8001cbfda7a69be9daf12ac16205d6e5b997265a471df1ad' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
