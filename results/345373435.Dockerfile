[app/sources/345373435.Dockerfile]
digraph {
  "sha256:ccc00b564e939c564ee75e22e74106be4b2f2d056ff7ca19a8e7e876bf16139d" [label="docker-image://docker.io/balenalib/jetson-tx2-ubuntu:xenial-build" shape="ellipse"];
  "sha256:104abb2f1805eb1fd8651f0f653bedbd476d9c37b6d49bbb935ba17a0ab3f37d" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:af56b44ccf6ce71a40442e3b40a6f5557e7697aded9c3299c69527b0d1ca33ac" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8dba5541b36f289e9d76d2a44d96786eff1f0ef1ef92712e2e51cb1dc2e15f58" [label="mkdir{path=/go}" shape="note"];
  "sha256:f76c3e679e4d7eef2ad67cacbb573957ca4617b0233686ced482fc1c13fe8ad6" [label="sha256:f76c3e679e4d7eef2ad67cacbb573957ca4617b0233686ced482fc1c13fe8ad6" shape="plaintext"];
  "sha256:ccc00b564e939c564ee75e22e74106be4b2f2d056ff7ca19a8e7e876bf16139d" -> "sha256:104abb2f1805eb1fd8651f0f653bedbd476d9c37b6d49bbb935ba17a0ab3f37d" [label=""];
  "sha256:104abb2f1805eb1fd8651f0f653bedbd476d9c37b6d49bbb935ba17a0ab3f37d" -> "sha256:af56b44ccf6ce71a40442e3b40a6f5557e7697aded9c3299c69527b0d1ca33ac" [label=""];
  "sha256:af56b44ccf6ce71a40442e3b40a6f5557e7697aded9c3299c69527b0d1ca33ac" -> "sha256:8dba5541b36f289e9d76d2a44d96786eff1f0ef1ef92712e2e51cb1dc2e15f58" [label=""];
  "sha256:8dba5541b36f289e9d76d2a44d96786eff1f0ef1ef92712e2e51cb1dc2e15f58" -> "sha256:f76c3e679e4d7eef2ad67cacbb573957ca4617b0233686ced482fc1c13fe8ad6" [label=""];
}

