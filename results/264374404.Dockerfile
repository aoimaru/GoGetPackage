[app/sources/264374404.Dockerfile]
digraph {
  "sha256:2402f7ffd191acef779a5194889e3f4c44e9b886a129b25f799a6819169f2c9d" [label="docker-image://docker.io/microsoft/windowsservercore:10.0.14393.1198" shape="ellipse"];
  "sha256:f6c44d09d4bb5d1bad2cbc2794873732aeb519c3aa81bf64605fe1c2a7b3d855" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -OutFile git.zip -Uri \"https://github.com/git-for-windows/git/releases/download/v$($env:GIT_VERSION).windows.1/MinGit-$($env:GIT_VERSION)-64-bit.zip\"; \tif ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) {exit 1}; \tExpand-Archive -Path git.zip -DestinationPath C:\\git; \tRemove-Item git.zip -Force; \t$env:PATH = $env:GIT_PATH + $env:PATH; \t[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine)" shape="box"];
  "sha256:778042702a2e07499195d0ebaddcb234fb40d56044c4f4266ab59643e54b3658" [label="sha256:778042702a2e07499195d0ebaddcb234fb40d56044c4f4266ab59643e54b3658" shape="plaintext"];
  "sha256:2402f7ffd191acef779a5194889e3f4c44e9b886a129b25f799a6819169f2c9d" -> "sha256:f6c44d09d4bb5d1bad2cbc2794873732aeb519c3aa81bf64605fe1c2a7b3d855" [label=""];
  "sha256:f6c44d09d4bb5d1bad2cbc2794873732aeb519c3aa81bf64605fe1c2a7b3d855" -> "sha256:778042702a2e07499195d0ebaddcb234fb40d56044c4f4266ab59643e54b3658" [label=""];
}

