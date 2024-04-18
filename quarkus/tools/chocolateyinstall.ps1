# Generated with JReleaser 1.3.0 at 2024-04-18T13:49:06.078168248Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.9.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.9.4/quarkus-cli-3.9.4.zip' `
    -Checksum '2c4ed986cde36ef638bcc15f2bacfdf098bb12571755f7b76ac21f7630fb7c33' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
