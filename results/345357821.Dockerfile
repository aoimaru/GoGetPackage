[app/sources/345357821.Dockerfile]
digraph {
  "sha256:c844d58cbc57a4655f500f228aa48cb9f0e720b8ccdcb02edf6654c13454e222" [label="docker-image://docker.io/balenalib/qemux86-64-ubuntu:xenial-build" shape="ellipse"];
  "sha256:796428a006a0a6829897a619cad2c7250e793028f72b06a08dedf106fdddbc56" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"d8626fb6f9a3ab397d88c483b576be41fa81eefcec2fd18562c87626dbb3c39e  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz" shape="box"];
  "sha256:ee4fc1200e42d687dc1e6f45dd25cc3b0769f051608f5549324d48f49c11de1a" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:da1f9581ab06a4f600d901d1e2ab92060cf82c36b30f1244ce889893ca112a74" [label="mkdir{path=/go}" shape="note"];
  "sha256:b3170a2f421595b5c311dc15ec46f55fe2175d43d739aeb1d413f56b10c04432" [label="sha256:b3170a2f421595b5c311dc15ec46f55fe2175d43d739aeb1d413f56b10c04432" shape="plaintext"];
  "sha256:c844d58cbc57a4655f500f228aa48cb9f0e720b8ccdcb02edf6654c13454e222" -> "sha256:796428a006a0a6829897a619cad2c7250e793028f72b06a08dedf106fdddbc56" [label=""];
  "sha256:796428a006a0a6829897a619cad2c7250e793028f72b06a08dedf106fdddbc56" -> "sha256:ee4fc1200e42d687dc1e6f45dd25cc3b0769f051608f5549324d48f49c11de1a" [label=""];
  "sha256:ee4fc1200e42d687dc1e6f45dd25cc3b0769f051608f5549324d48f49c11de1a" -> "sha256:da1f9581ab06a4f600d901d1e2ab92060cf82c36b30f1244ce889893ca112a74" [label=""];
  "sha256:da1f9581ab06a4f600d901d1e2ab92060cf82c36b30f1244ce889893ca112a74" -> "sha256:b3170a2f421595b5c311dc15ec46f55fe2175d43d739aeb1d413f56b10c04432" [label=""];
}

