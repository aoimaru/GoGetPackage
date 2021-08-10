[app/sources/320122156.Dockerfile]
digraph {
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" [label="docker-image://docker.io/library/debian:jessie-slim" shape="ellipse"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:db083989d3362b74ad4b805ff3c08ee89f2454c9537b0e23316b805d5ca56191" [label="mkdir{path=/src/github.com/PeppyS/what-to-watch/api}" shape="note"];
  "sha256:12740626eda3e73aacb1c21ffaa384be8fa3615d6a5843afcdf9ea737a20abc8" [label="/bin/sh -c go get -u github.com/golang/dep/..." shape="box"];
  "sha256:64c3d676d3f862218cef2a50c379ec1ae5e9693c9c54dbf3d46e60ad960df3ef" [label="local://context" shape="ellipse"];
  "sha256:84dc7d8e77200282f9b6cf7edf6654a6bd73a8a393b381d248c62ee729f6ce81" [label="copy{src=/Gopkg.toml, dest=/src/github.com/PeppyS/what-to-watch/api/},copy{src=/Gopkg.lock, dest=/src/github.com/PeppyS/what-to-watch/api/}" shape="note"];
  "sha256:bd1c1237d5f68c0de12696c61ffb8dfcf99f4b421270b43f080c071c7864059c" [label="/bin/sh -c dep ensure --vendor-only" shape="box"];
  "sha256:5fc1506677de30881de236ae918593bf986a6add36a946d2f6986e1dfdb5eb7d" [label="copy{src=/, dest=/src/github.com/PeppyS/what-to-watch/api/}" shape="note"];
  "sha256:d73c6e4537bc42015c06be800c89442b91b0e061e62924a9449d3424e41e03ac" [label="/bin/sh -c go build -o /bin/api cmd/api/main.go" shape="box"];
  "sha256:795cd8a44a697051f0ef0f1e2959dc5009f8e3fe17eec312b9bd83617e050411" [label="copy{src=/bin/api, dest=/bin/api}" shape="note"];
  "sha256:bdd3d5ee2f57a0d1efb3669453aa25690858d7372453c3e13b2acf8ee6ab8f9d" [label="https://raw.githubusercontent.com/vishnubob/wait-for-it/e1f115e4ca285c3c24e847c4dd4be955e0ed51c2/wait-for-it.sh" shape="ellipse"];
  "sha256:39bc30460326c624ffd9d91c3d66b8e773d2e227cf31adf30372b1fe038d7ab7" [label="copy{src=/wait-for-it.sh, dest=/utils/wait-for-it.sh}" shape="note"];
  "sha256:ecdf97eff0b322ea4bf1a54db0bc362668f296a0c89194e196d912da180fe10b" [label="/bin/sh -c chmod 777 /utils/wait-for-it.sh" shape="box"];
  "sha256:31bbad4e017f9b782b90766dfa3a3ead0a6cf929ff69a72154da204464adfcea" [label="sha256:31bbad4e017f9b782b90766dfa3a3ead0a6cf929ff69a72154da204464adfcea" shape="plaintext"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:db083989d3362b74ad4b805ff3c08ee89f2454c9537b0e23316b805d5ca56191" [label=""];
  "sha256:db083989d3362b74ad4b805ff3c08ee89f2454c9537b0e23316b805d5ca56191" -> "sha256:12740626eda3e73aacb1c21ffaa384be8fa3615d6a5843afcdf9ea737a20abc8" [label=""];
  "sha256:12740626eda3e73aacb1c21ffaa384be8fa3615d6a5843afcdf9ea737a20abc8" -> "sha256:84dc7d8e77200282f9b6cf7edf6654a6bd73a8a393b381d248c62ee729f6ce81" [label=""];
  "sha256:64c3d676d3f862218cef2a50c379ec1ae5e9693c9c54dbf3d46e60ad960df3ef" -> "sha256:84dc7d8e77200282f9b6cf7edf6654a6bd73a8a393b381d248c62ee729f6ce81" [label=""];
  "sha256:84dc7d8e77200282f9b6cf7edf6654a6bd73a8a393b381d248c62ee729f6ce81" -> "sha256:bd1c1237d5f68c0de12696c61ffb8dfcf99f4b421270b43f080c071c7864059c" [label=""];
  "sha256:bd1c1237d5f68c0de12696c61ffb8dfcf99f4b421270b43f080c071c7864059c" -> "sha256:5fc1506677de30881de236ae918593bf986a6add36a946d2f6986e1dfdb5eb7d" [label=""];
  "sha256:64c3d676d3f862218cef2a50c379ec1ae5e9693c9c54dbf3d46e60ad960df3ef" -> "sha256:5fc1506677de30881de236ae918593bf986a6add36a946d2f6986e1dfdb5eb7d" [label=""];
  "sha256:5fc1506677de30881de236ae918593bf986a6add36a946d2f6986e1dfdb5eb7d" -> "sha256:d73c6e4537bc42015c06be800c89442b91b0e061e62924a9449d3424e41e03ac" [label=""];
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" -> "sha256:795cd8a44a697051f0ef0f1e2959dc5009f8e3fe17eec312b9bd83617e050411" [label=""];
  "sha256:d73c6e4537bc42015c06be800c89442b91b0e061e62924a9449d3424e41e03ac" -> "sha256:795cd8a44a697051f0ef0f1e2959dc5009f8e3fe17eec312b9bd83617e050411" [label=""];
  "sha256:795cd8a44a697051f0ef0f1e2959dc5009f8e3fe17eec312b9bd83617e050411" -> "sha256:39bc30460326c624ffd9d91c3d66b8e773d2e227cf31adf30372b1fe038d7ab7" [label=""];
  "sha256:bdd3d5ee2f57a0d1efb3669453aa25690858d7372453c3e13b2acf8ee6ab8f9d" -> "sha256:39bc30460326c624ffd9d91c3d66b8e773d2e227cf31adf30372b1fe038d7ab7" [label=""];
  "sha256:39bc30460326c624ffd9d91c3d66b8e773d2e227cf31adf30372b1fe038d7ab7" -> "sha256:ecdf97eff0b322ea4bf1a54db0bc362668f296a0c89194e196d912da180fe10b" [label=""];
  "sha256:ecdf97eff0b322ea4bf1a54db0bc362668f296a0c89194e196d912da180fe10b" -> "sha256:31bbad4e017f9b782b90766dfa3a3ead0a6cf929ff69a72154da204464adfcea" [label=""];
}

