[app/sources/354560513.Dockerfile]
digraph {
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" [label="docker-image://mcr.microsoft.com/windows/servercore:ltsc2016" shape="ellipse"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:72aedad19027955ade40c571b20e14fd10eb4edcc1105b1e75cac349fc94a5d8" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -UseBasicParsing $env:GIT_DOWNLOAD_URL -OutFile git.zip;     if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_SHA256) {exit 1} ;     Expand-Archive git.zip -DestinationPath C:\\git;     Remove-Item git.zip;     Write-Host 'Updating PATH ...';     $env:PATH = 'C:\\git\\cmd;C:\\git\\mingw64\\bin;C:\\git\\usr\\bin;' + $env:PATH;     Set-ItemProperty -Path 'HKLM:\\SYSTEM\\CurrentControlSet\\Control\\Session Manager\\Environment\\' -Name Path -Value $env:PATH" shape="box"];
  "sha256:eee996ab288a78a0b4c619b9cf4778fa8c431d4c254aed1c73b7ead6f12ba017" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; mkdir src\\github.com\\docker" shape="box"];
  "sha256:77678cc4ff7a5f9a09740ecf0b9378f279d279cf0571221890f11bb645f13ace" [label="mkdir{path=/go/src/github.com/docker}" shape="note"];
  "sha256:944eb6d9dbf9374d6407e01e091300487c90e03937583219ca685b03bf51d831" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; git clone https://github.com/docker/swarm" shape="box"];
  "sha256:b564d38bf9df51083ee87ac2a286cd233803ce70a09f5ca7bf2e36a17aee5bc1" [label="mkdir{path=/go/src/github.com/docker/swarm}" shape="note"];
  "sha256:cb9d1fb7e8fedb46c53f9e6d993c36d3608786712a20ad39055b057945da6384" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; git checkout $env:SWARM_VERSION" shape="box"];
  "sha256:c2258e16054a27dd557d9bbda8a23b0415d3b412a1d31dd5d1f0b1ce9715c6d9" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; go install ." shape="box"];
  "sha256:bc02ce709872c2dfd6243a0a172301abc6377bdcc66fe7d128a09b172029e045" [label="copy{src=/go/bin/swarm.exe, dest=/swarm.exe}" shape="note"];
  "sha256:0c0ee098e5b04ef60a865bc00c2fa679995e180524b4c2f70276dff497c7e8eb" [label="sha256:0c0ee098e5b04ef60a865bc00c2fa679995e180524b4c2f70276dff497c7e8eb" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:72aedad19027955ade40c571b20e14fd10eb4edcc1105b1e75cac349fc94a5d8" [label=""];
  "sha256:72aedad19027955ade40c571b20e14fd10eb4edcc1105b1e75cac349fc94a5d8" -> "sha256:eee996ab288a78a0b4c619b9cf4778fa8c431d4c254aed1c73b7ead6f12ba017" [label=""];
  "sha256:eee996ab288a78a0b4c619b9cf4778fa8c431d4c254aed1c73b7ead6f12ba017" -> "sha256:77678cc4ff7a5f9a09740ecf0b9378f279d279cf0571221890f11bb645f13ace" [label=""];
  "sha256:77678cc4ff7a5f9a09740ecf0b9378f279d279cf0571221890f11bb645f13ace" -> "sha256:944eb6d9dbf9374d6407e01e091300487c90e03937583219ca685b03bf51d831" [label=""];
  "sha256:944eb6d9dbf9374d6407e01e091300487c90e03937583219ca685b03bf51d831" -> "sha256:b564d38bf9df51083ee87ac2a286cd233803ce70a09f5ca7bf2e36a17aee5bc1" [label=""];
  "sha256:b564d38bf9df51083ee87ac2a286cd233803ce70a09f5ca7bf2e36a17aee5bc1" -> "sha256:cb9d1fb7e8fedb46c53f9e6d993c36d3608786712a20ad39055b057945da6384" [label=""];
  "sha256:cb9d1fb7e8fedb46c53f9e6d993c36d3608786712a20ad39055b057945da6384" -> "sha256:c2258e16054a27dd557d9bbda8a23b0415d3b412a1d31dd5d1f0b1ce9715c6d9" [label=""];
  "sha256:eaebd4d260b3e2211ec019adc1854357901cf5af7f65c6dd1e9d8b36af431edc" -> "sha256:bc02ce709872c2dfd6243a0a172301abc6377bdcc66fe7d128a09b172029e045" [label=""];
  "sha256:c2258e16054a27dd557d9bbda8a23b0415d3b412a1d31dd5d1f0b1ce9715c6d9" -> "sha256:bc02ce709872c2dfd6243a0a172301abc6377bdcc66fe7d128a09b172029e045" [label=""];
  "sha256:bc02ce709872c2dfd6243a0a172301abc6377bdcc66fe7d128a09b172029e045" -> "sha256:0c0ee098e5b04ef60a865bc00c2fa679995e180524b4c2f70276dff497c7e8eb" [label=""];
}

