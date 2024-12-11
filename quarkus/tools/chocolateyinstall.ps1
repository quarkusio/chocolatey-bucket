# Generated with JReleaser 1.3.0 at 2024-12-11T15:13:48.147908912Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.17.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.17.4/quarkus-cli-3.17.4.zip' `
    -Checksum '48aed88467987245397303e334c82dd3bcf6f9c70724f456021444ecda0374c7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
