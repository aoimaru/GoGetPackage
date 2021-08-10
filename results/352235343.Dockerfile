[app/sources/352235343.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:9c0a7b7d5b969b1506c15b75dbf2c711ad59813ff003cf52a91e97345ee3c1bc" [label="/bin/sh -c mkdir /hygieia/config" shape="box"];
  "sha256:0f1a6324e2ed57ce348ba686b9e407a49d5478d98622a316eb197f42ec10cce6" [label="mkdir{path=/hygieia}" shape="note"];
  "sha256:f4b2554faabc88af8363f96c2f16213928a17e2e43070ba532ea022c1a447c19" [label="local://context" shape="ellipse"];
  "sha256:ecaa9325d89bc6a73d92e26d208650fe9c625c9944d4f38e618d5afc98a6ccbb" [label="copy{src=/target/*.jar, dest=/hygieia}" shape="note"];
  "sha256:9a07840731cc22df0d159d7933052a0c7639a019b1bf48b5eff0547d22644da2" [label="copy{src=/docker/properties-builder.sh, dest=/hygieia/}" shape="note"];
  "sha256:dd9aa41c66da859431ad7a7dcfe92984ff5f86cec2d06410ef4f1f836b8a758a" [label="sha256:dd9aa41c66da859431ad7a7dcfe92984ff5f86cec2d06410ef4f1f836b8a758a" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:9c0a7b7d5b969b1506c15b75dbf2c711ad59813ff003cf52a91e97345ee3c1bc" [label=""];
  "sha256:9c0a7b7d5b969b1506c15b75dbf2c711ad59813ff003cf52a91e97345ee3c1bc" -> "sha256:0f1a6324e2ed57ce348ba686b9e407a49d5478d98622a316eb197f42ec10cce6" [label=""];
  "sha256:0f1a6324e2ed57ce348ba686b9e407a49d5478d98622a316eb197f42ec10cce6" -> "sha256:ecaa9325d89bc6a73d92e26d208650fe9c625c9944d4f38e618d5afc98a6ccbb" [label=""];
  "sha256:f4b2554faabc88af8363f96c2f16213928a17e2e43070ba532ea022c1a447c19" -> "sha256:ecaa9325d89bc6a73d92e26d208650fe9c625c9944d4f38e618d5afc98a6ccbb" [label=""];
  "sha256:ecaa9325d89bc6a73d92e26d208650fe9c625c9944d4f38e618d5afc98a6ccbb" -> "sha256:9a07840731cc22df0d159d7933052a0c7639a019b1bf48b5eff0547d22644da2" [label=""];
  "sha256:f4b2554faabc88af8363f96c2f16213928a17e2e43070ba532ea022c1a447c19" -> "sha256:9a07840731cc22df0d159d7933052a0c7639a019b1bf48b5eff0547d22644da2" [label=""];
  "sha256:9a07840731cc22df0d159d7933052a0c7639a019b1bf48b5eff0547d22644da2" -> "sha256:dd9aa41c66da859431ad7a7dcfe92984ff5f86cec2d06410ef4f1f836b8a758a" [label=""];
}

