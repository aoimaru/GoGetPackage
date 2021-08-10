[app/sources/345361336.Dockerfile]
digraph {
  "sha256:273ea2898d4f56c19fdc0a3998735fb4f65a2d9cf6359a58364c7dffe0c67c3b" [label="docker-image://docker.io/balenalib/up-board-ubuntu:xenial-build" shape="ellipse"];
  "sha256:b54850e826376e3723820411a823b617989b9047d8ff2b6086ed2d38433a99b6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz" shape="box"];
  "sha256:8e0ca88cd75ffc5cf3d5b6e0a43b2a290a4be4e71c38f572b04ef94ff16f1e3e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:128e9cb88428150734b865c48ff910f6ecffe566891047909002963be30e224a" [label="mkdir{path=/go}" shape="note"];
  "sha256:8e5b3c908cd175678c617a18577e90257a915933bf4bb3f406ac59ec11f30463" [label="sha256:8e5b3c908cd175678c617a18577e90257a915933bf4bb3f406ac59ec11f30463" shape="plaintext"];
  "sha256:273ea2898d4f56c19fdc0a3998735fb4f65a2d9cf6359a58364c7dffe0c67c3b" -> "sha256:b54850e826376e3723820411a823b617989b9047d8ff2b6086ed2d38433a99b6" [label=""];
  "sha256:b54850e826376e3723820411a823b617989b9047d8ff2b6086ed2d38433a99b6" -> "sha256:8e0ca88cd75ffc5cf3d5b6e0a43b2a290a4be4e71c38f572b04ef94ff16f1e3e" [label=""];
  "sha256:8e0ca88cd75ffc5cf3d5b6e0a43b2a290a4be4e71c38f572b04ef94ff16f1e3e" -> "sha256:128e9cb88428150734b865c48ff910f6ecffe566891047909002963be30e224a" [label=""];
  "sha256:128e9cb88428150734b865c48ff910f6ecffe566891047909002963be30e224a" -> "sha256:8e5b3c908cd175678c617a18577e90257a915933bf4bb3f406ac59ec11f30463" [label=""];
}

