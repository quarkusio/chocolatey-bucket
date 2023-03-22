# Generated with JReleaser 1.3.0 at 2023-03-22T16:12:34.73937+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.5.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.5.Final/quarkus-cli-2.16.5.Final.zip' `
    -Checksum '8ec6ace25d8ecf8354f0f4f5b71d949085ee873a0475cc9b64c0e1aade2f06b7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
