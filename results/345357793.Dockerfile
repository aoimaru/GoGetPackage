[app/sources/345357793.Dockerfile]
digraph {
  "sha256:bf0f9f31844af8e094b39cea896190b3c2c5f88b77fc472ccebdf8b8543e1df1" [label="docker-image://docker.io/balenalib/qemux86-64-fedora:30-build" shape="ellipse"];
  "sha256:662d44863c8a9366364067e76e67c769aaf0783ef8f37175bbb376a363728494" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz" shape="box"];
  "sha256:48c1abd57f70d283f803391d8853a853c692915c477d26709d10584a9393aca8" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6d183e517cfbd6a5f11efaa74b991303fe3a2db3544c29d8441437b9de80ebc4" [label="mkdir{path=/go}" shape="note"];
  "sha256:dbdeb07fd14aeba2b21acfb4d89950375584a867aec6cf4fc6d125426593cc3f" [label="sha256:dbdeb07fd14aeba2b21acfb4d89950375584a867aec6cf4fc6d125426593cc3f" shape="plaintext"];
  "sha256:bf0f9f31844af8e094b39cea896190b3c2c5f88b77fc472ccebdf8b8543e1df1" -> "sha256:662d44863c8a9366364067e76e67c769aaf0783ef8f37175bbb376a363728494" [label=""];
  "sha256:662d44863c8a9366364067e76e67c769aaf0783ef8f37175bbb376a363728494" -> "sha256:48c1abd57f70d283f803391d8853a853c692915c477d26709d10584a9393aca8" [label=""];
  "sha256:48c1abd57f70d283f803391d8853a853c692915c477d26709d10584a9393aca8" -> "sha256:6d183e517cfbd6a5f11efaa74b991303fe3a2db3544c29d8441437b9de80ebc4" [label=""];
  "sha256:6d183e517cfbd6a5f11efaa74b991303fe3a2db3544c29d8441437b9de80ebc4" -> "sha256:dbdeb07fd14aeba2b21acfb4d89950375584a867aec6cf4fc6d125426593cc3f" [label=""];
}

