[app/sources/340282463.Dockerfile]
digraph {
  "sha256:f47e102df2be6ec9d348e49cd959655c735a86cbcb445a471f316a292e61cd10" [label="docker-image://docker.io/microsoft/windowsservercore:1803" shape="ellipse"];
  "sha256:011f57270d6f4fd408f42e7ffeecaf769908c4e9aac2b1849a606e4659fd9d16" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Write-Debug [Net.ServicePointManager]::SecurityProtocol ;    [Net.ServicePointManager]::SecurityProtocol ;    [Net.ServicePointManager]::SecurityProtocol = 'Ssl3', 'Tls12';     Invoke-WebRequest https://cloud.r-project.org/bin/windows/base/R-$env:R_VERSION-win.exe -OutFile .\\R-win.exe" shape="box"];
  "sha256:86db3ff57ae2957496ea3300719167eae286f3bbf52cb54e0c9d81db8c75b18f" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; if ( (Get-FileHash -Path .\\R-win.exe -Algorithm MD5).hash -ne $env:R_INSTALLER_HASH ) { Write-Warning 'hash mismatch for downloaded file, stopping.'; exit 1 }" shape="box"];
  "sha256:d4905d3232b54f0dc743c50785ffa1bb6e91de914a9aa6420a0e6f600241b7a4" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Start-Process .\\R-win.exe -ArgumentList '/SILENT /DIR=\"c:\\R\"' -Wait ;     Remove-Item .\\R-win.exe -Force" shape="box"];
  "sha256:54920ee7738b95702d2ee504206046f14b3d0424a861360442a3bdc18cce657f" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; $rPath = 'C:\\R\\bin' ; \t\t$newPath = ('{0};{1}' -f $rPath, $Env:PATH); \t\tsetx /M PATH $newPath" shape="box"];
  "sha256:1d3af0b710005fbda7576dd4f68cf8ebe864a31909cae41a832daf256b1e5c75" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Add-Content c:\\R\\etc\\Rprofile.site 'options(repos = c(CRAN = \\\"https://cloud.r-project.org/\\\"))'" shape="box"];
  "sha256:867981ddc247fe83b506c11f2b1f203bb806d9d3bcc93d9690ebc208401fbde4" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'));     choco feature disable --name showDownloadProgress" shape="box"];
  "sha256:82b549beb64c11b1dc1345a83799d886f5ef14928078f3fc7bc0035cde566dd8" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; choco install micro -y" shape="box"];
  "sha256:f3b87370d08eb4d6aa1d3307905da27ded09e6f216efaeea82d18d457f62c8b9" [label="sha256:f3b87370d08eb4d6aa1d3307905da27ded09e6f216efaeea82d18d457f62c8b9" shape="plaintext"];
  "sha256:f47e102df2be6ec9d348e49cd959655c735a86cbcb445a471f316a292e61cd10" -> "sha256:011f57270d6f4fd408f42e7ffeecaf769908c4e9aac2b1849a606e4659fd9d16" [label=""];
  "sha256:011f57270d6f4fd408f42e7ffeecaf769908c4e9aac2b1849a606e4659fd9d16" -> "sha256:86db3ff57ae2957496ea3300719167eae286f3bbf52cb54e0c9d81db8c75b18f" [label=""];
  "sha256:86db3ff57ae2957496ea3300719167eae286f3bbf52cb54e0c9d81db8c75b18f" -> "sha256:d4905d3232b54f0dc743c50785ffa1bb6e91de914a9aa6420a0e6f600241b7a4" [label=""];
  "sha256:d4905d3232b54f0dc743c50785ffa1bb6e91de914a9aa6420a0e6f600241b7a4" -> "sha256:54920ee7738b95702d2ee504206046f14b3d0424a861360442a3bdc18cce657f" [label=""];
  "sha256:54920ee7738b95702d2ee504206046f14b3d0424a861360442a3bdc18cce657f" -> "sha256:1d3af0b710005fbda7576dd4f68cf8ebe864a31909cae41a832daf256b1e5c75" [label=""];
  "sha256:1d3af0b710005fbda7576dd4f68cf8ebe864a31909cae41a832daf256b1e5c75" -> "sha256:867981ddc247fe83b506c11f2b1f203bb806d9d3bcc93d9690ebc208401fbde4" [label=""];
  "sha256:867981ddc247fe83b506c11f2b1f203bb806d9d3bcc93d9690ebc208401fbde4" -> "sha256:82b549beb64c11b1dc1345a83799d886f5ef14928078f3fc7bc0035cde566dd8" [label=""];
  "sha256:82b549beb64c11b1dc1345a83799d886f5ef14928078f3fc7bc0035cde566dd8" -> "sha256:f3b87370d08eb4d6aa1d3307905da27ded09e6f216efaeea82d18d457f62c8b9" [label=""];
}

