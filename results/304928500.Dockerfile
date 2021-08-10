[app/sources/304928500.Dockerfile]
digraph {
  "sha256:7432d1d96389acc19187d9af048fbf376a3c0bce14ea6c39dbc5549373bb1e90" [label="docker-image://docker.io/library/golang:1.3-cross" shape="ellipse"];
  "sha256:604d15b06c193814a4fc783cccf7cde2de54429c03d3c4dbe32aae0ba0b1096c" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq upx --no-install-recommends" shape="box"];
  "sha256:0b1fe7d8dada796c37d280bfb4ca0613ec570902573848413dcd36ec7a8c3c4b" [label="local://context" shape="ellipse"];
  "sha256:7033f2bc31ede3b931979db7b02a092526494395ce3fcfb5a6291a4ae186b51f" [label="copy{src=/build.sh, dest=/}" shape="note"];
  "sha256:d589ab38fd43f2a71844444b75570567f18aaea0dcd7fea6cecf93696ce7d702" [label="sha256:d589ab38fd43f2a71844444b75570567f18aaea0dcd7fea6cecf93696ce7d702" shape="plaintext"];
  "sha256:7432d1d96389acc19187d9af048fbf376a3c0bce14ea6c39dbc5549373bb1e90" -> "sha256:604d15b06c193814a4fc783cccf7cde2de54429c03d3c4dbe32aae0ba0b1096c" [label=""];
  "sha256:604d15b06c193814a4fc783cccf7cde2de54429c03d3c4dbe32aae0ba0b1096c" -> "sha256:7033f2bc31ede3b931979db7b02a092526494395ce3fcfb5a6291a4ae186b51f" [label=""];
  "sha256:0b1fe7d8dada796c37d280bfb4ca0613ec570902573848413dcd36ec7a8c3c4b" -> "sha256:7033f2bc31ede3b931979db7b02a092526494395ce3fcfb5a6291a4ae186b51f" [label=""];
  "sha256:7033f2bc31ede3b931979db7b02a092526494395ce3fcfb5a6291a4ae186b51f" -> "sha256:d589ab38fd43f2a71844444b75570567f18aaea0dcd7fea6cecf93696ce7d702" [label=""];
}

