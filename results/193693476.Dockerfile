[app/sources/193693476.Dockerfile]
digraph {
  "sha256:89f83a398ddd7a7561f1df8f8c74620920526e06cd666cc36f009cae6c85fa4e" [label="docker-image://docker.io/library/node:4.6" shape="ellipse"];
  "sha256:4559010c22a2c1fc2c2c930a2be4364baf3d42864d6ea79d457f8d4f27b433d0" [label="/bin/sh -c mkdir -pv $APP_HOME" shape="box"];
  "sha256:da770168f64d8fdefb70adced10276fb7679aa0f7d8a2726d697ba141dc85211" [label="mkdir{path=/app}" shape="note"];
  "sha256:ef27642fb54355344f7bf569df543bf8e5761e996ec235faab84c10468665913" [label="local://context" shape="ellipse"];
  "sha256:6bee5234a85ca27416b4fbaa98621558b6e9559d6ddcc6a1df0392f2485d6adc" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:e883368b6f03c9e49531761ee925010b0acde064c89cf3d9aa55eb4beb85afc5" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4eb0cab31b442ed9eb8ac9d4f19476a157fe986ce1a0723924b3e087734d14a6" [label="sha256:4eb0cab31b442ed9eb8ac9d4f19476a157fe986ce1a0723924b3e087734d14a6" shape="plaintext"];
  "sha256:89f83a398ddd7a7561f1df8f8c74620920526e06cd666cc36f009cae6c85fa4e" -> "sha256:4559010c22a2c1fc2c2c930a2be4364baf3d42864d6ea79d457f8d4f27b433d0" [label=""];
  "sha256:4559010c22a2c1fc2c2c930a2be4364baf3d42864d6ea79d457f8d4f27b433d0" -> "sha256:da770168f64d8fdefb70adced10276fb7679aa0f7d8a2726d697ba141dc85211" [label=""];
  "sha256:da770168f64d8fdefb70adced10276fb7679aa0f7d8a2726d697ba141dc85211" -> "sha256:6bee5234a85ca27416b4fbaa98621558b6e9559d6ddcc6a1df0392f2485d6adc" [label=""];
  "sha256:ef27642fb54355344f7bf569df543bf8e5761e996ec235faab84c10468665913" -> "sha256:6bee5234a85ca27416b4fbaa98621558b6e9559d6ddcc6a1df0392f2485d6adc" [label=""];
  "sha256:6bee5234a85ca27416b4fbaa98621558b6e9559d6ddcc6a1df0392f2485d6adc" -> "sha256:e883368b6f03c9e49531761ee925010b0acde064c89cf3d9aa55eb4beb85afc5" [label=""];
  "sha256:e883368b6f03c9e49531761ee925010b0acde064c89cf3d9aa55eb4beb85afc5" -> "sha256:4eb0cab31b442ed9eb8ac9d4f19476a157fe986ce1a0723924b3e087734d14a6" [label=""];
}

