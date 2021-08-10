[app/sources/345361301.Dockerfile]
digraph {
  "sha256:0a1fb9ac9ad3cb02de9938c1033a50119d78f1dea93b8651876d4e66dfed7364" [label="docker-image://docker.io/balenalib/up-board-ubuntu:bionic-build" shape="ellipse"];
  "sha256:4c20edf960912db8de1a39e50acf7af76ff56734f953bbd1fa55a350d060c403" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz" shape="box"];
  "sha256:5c05a64301061320b06dfac4ee1c3f30cbe5bba16caf339f3a96ba1cf5fc8a01" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a9b5fbb3d3ec27025824084258288e157f0d8582962f881fb41677b1ca99158c" [label="mkdir{path=/go}" shape="note"];
  "sha256:e8287f5e747e5799f31cb4b3ce4183106777f4b7adfc811214dd92dbfd847647" [label="sha256:e8287f5e747e5799f31cb4b3ce4183106777f4b7adfc811214dd92dbfd847647" shape="plaintext"];
  "sha256:0a1fb9ac9ad3cb02de9938c1033a50119d78f1dea93b8651876d4e66dfed7364" -> "sha256:4c20edf960912db8de1a39e50acf7af76ff56734f953bbd1fa55a350d060c403" [label=""];
  "sha256:4c20edf960912db8de1a39e50acf7af76ff56734f953bbd1fa55a350d060c403" -> "sha256:5c05a64301061320b06dfac4ee1c3f30cbe5bba16caf339f3a96ba1cf5fc8a01" [label=""];
  "sha256:5c05a64301061320b06dfac4ee1c3f30cbe5bba16caf339f3a96ba1cf5fc8a01" -> "sha256:a9b5fbb3d3ec27025824084258288e157f0d8582962f881fb41677b1ca99158c" [label=""];
  "sha256:a9b5fbb3d3ec27025824084258288e157f0d8582962f881fb41677b1ca99158c" -> "sha256:e8287f5e747e5799f31cb4b3ce4183106777f4b7adfc811214dd92dbfd847647" [label=""];
}

