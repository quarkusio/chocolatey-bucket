# Generated with JReleaser 1.3.0 at 2025-06-04T16:21:03.460918408Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.23.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.23.1/quarkus-cli-3.23.1.zip' `
    -Checksum '482e7bb070b83ca7231088144038a116b87e1587ee36aaf8a73a880846605b73' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
