[app/sources/282255048.Dockerfile]
digraph {
  "sha256:86d8d8d2e933ceedf29c923a017bec3f0499048e5647bdf4dc21ebff43a26c5f" [label="docker-image://docker.io/microsoft/nanoserver:sac2016" shape="ellipse"];
  "sha256:245627a12117639e1d99c3ee60504a4dd1bfac22e28b48c6b565fa75473bc661" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; $newPath = ('{0}\\bin;C:\\go\\bin;{1}' -f $env:GOPATH, $env:PATH); \tWrite-Host ('Updating PATH: {0}' -f $newPath); \tsetx /M PATH $newPath;" shape="box"];
  "sha256:7ff4ba2a34d94005c8f07d3741ef877710636a9d88619f2818a0d3b150cf8dbc" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); \tWrite-Host ('Downloading {0} ...' -f $url); \tInvoke-WebRequest -Uri $url -OutFile 'go.zip'; \t\t$sha256 = '0b3a31eb7a46ef3976098cb92fde63c0871dceced91b0a3187953456f8eb8d6e'; \tWrite-Host ('Verifying sha256 ({0}) ...' -f $sha256); \tif ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { \t\tWrite-Host 'FAILED!'; \t\texit 1; \t}; \t\tWrite-Host 'Expanding ...'; \tExpand-Archive go.zip -DestinationPath C:\\; \t\tWrite-Host 'Verifying install (\"go version\") ...'; \tgo version; \t\tWrite-Host 'Removing ...'; \tRemove-Item go.zip -Force; \t\tWrite-Host 'Complete.';" shape="box"];
  "sha256:a54de3679be503258d262b0311ec1b318ad5c00cece40f218a950a8f2fea3b7e" [label="mkdir{path=/C:\\gopath}" shape="note"];
  "sha256:44bf1ff358fa53147423c2d5551ceae4957a1b8ce235ccc3fdd0c09362ecbe2c" [label="sha256:44bf1ff358fa53147423c2d5551ceae4957a1b8ce235ccc3fdd0c09362ecbe2c" shape="plaintext"];
  "sha256:86d8d8d2e933ceedf29c923a017bec3f0499048e5647bdf4dc21ebff43a26c5f" -> "sha256:245627a12117639e1d99c3ee60504a4dd1bfac22e28b48c6b565fa75473bc661" [label=""];
  "sha256:245627a12117639e1d99c3ee60504a4dd1bfac22e28b48c6b565fa75473bc661" -> "sha256:7ff4ba2a34d94005c8f07d3741ef877710636a9d88619f2818a0d3b150cf8dbc" [label=""];
  "sha256:7ff4ba2a34d94005c8f07d3741ef877710636a9d88619f2818a0d3b150cf8dbc" -> "sha256:a54de3679be503258d262b0311ec1b318ad5c00cece40f218a950a8f2fea3b7e" [label=""];
  "sha256:a54de3679be503258d262b0311ec1b318ad5c00cece40f218a950a8f2fea3b7e" -> "sha256:44bf1ff358fa53147423c2d5551ceae4957a1b8ce235ccc3fdd0c09362ecbe2c" [label=""];
}

