[app/sources/282255036.Dockerfile]
digraph {
  "sha256:86d8d8d2e933ceedf29c923a017bec3f0499048e5647bdf4dc21ebff43a26c5f" [label="docker-image://docker.io/microsoft/nanoserver:sac2016" shape="ellipse"];
  "sha256:245627a12117639e1d99c3ee60504a4dd1bfac22e28b48c6b565fa75473bc661" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; $newPath = ('{0}\\bin;C:\\go\\bin;{1}' -f $env:GOPATH, $env:PATH); \tWrite-Host ('Updating PATH: {0}' -f $newPath); \tsetx /M PATH $newPath;" shape="box"];
  "sha256:1e6ffe4dcb8c7d73a4a023da1cbb8962a975396e8a510441dbc1fc35e498dcd2" [label="powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); \tWrite-Host ('Downloading {0} ...' -f $url); \tInvoke-WebRequest -Uri $url -OutFile 'go.zip'; \t\t$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; \tWrite-Host ('Verifying sha256 ({0}) ...' -f $sha256); \tif ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { \t\tWrite-Host 'FAILED!'; \t\texit 1; \t}; \t\tWrite-Host 'Expanding ...'; \tExpand-Archive go.zip -DestinationPath C:\\; \t\tWrite-Host 'Verifying install (\"go version\") ...'; \tgo version; \t\tWrite-Host 'Removing ...'; \tRemove-Item go.zip -Force; \t\tWrite-Host 'Complete.';" shape="box"];
  "sha256:bbae36db67defda9138140689d2043c73a70ee6322c8e26b30a23af77ed3df8d" [label="mkdir{path=/C:\\gopath}" shape="note"];
  "sha256:cab96e857be895f1384d4b3f671f57a78954a5ad5efe8a9caaf12932a5778739" [label="sha256:cab96e857be895f1384d4b3f671f57a78954a5ad5efe8a9caaf12932a5778739" shape="plaintext"];
  "sha256:86d8d8d2e933ceedf29c923a017bec3f0499048e5647bdf4dc21ebff43a26c5f" -> "sha256:245627a12117639e1d99c3ee60504a4dd1bfac22e28b48c6b565fa75473bc661" [label=""];
  "sha256:245627a12117639e1d99c3ee60504a4dd1bfac22e28b48c6b565fa75473bc661" -> "sha256:1e6ffe4dcb8c7d73a4a023da1cbb8962a975396e8a510441dbc1fc35e498dcd2" [label=""];
  "sha256:1e6ffe4dcb8c7d73a4a023da1cbb8962a975396e8a510441dbc1fc35e498dcd2" -> "sha256:bbae36db67defda9138140689d2043c73a70ee6322c8e26b30a23af77ed3df8d" [label=""];
  "sha256:bbae36db67defda9138140689d2043c73a70ee6322c8e26b30a23af77ed3df8d" -> "sha256:cab96e857be895f1384d4b3f671f57a78954a5ad5efe8a9caaf12932a5778739" [label=""];
}

