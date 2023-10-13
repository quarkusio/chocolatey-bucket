# Generated with JReleaser 1.3.0 at 2023-10-13T11:13:43.830472+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.4.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.4.3/quarkus-cli-3.4.3.zip' `
    -Checksum '72f2e5e9ba47c914f7a04919d527a1b521c08d5ecfefde28ce4da9a29e7a8b84' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
