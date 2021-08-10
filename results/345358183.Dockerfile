[app/sources/345358183.Dockerfile]
digraph {
  "sha256:2318074b4e919604b6424223d8520a394530cc3834b524a7a56561d334dd7db5" [label="docker-image://docker.io/balenalib/raspberrypi3-64-ubuntu:trusty-build" shape="ellipse"];
  "sha256:a7faaf8eebfea4a2a9a5eb25b0f9d56010bc50ea6282f1a08cfd07de3fdb8216" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:200a03ec30c1e7cbce3ac62834414fde8ca79e648aa25283d2cb8ffe36ec8478" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7df27c1de76a806f27cec392ecebf1d32103427376660dfdae9faed6d7a66245" [label="mkdir{path=/go}" shape="note"];
  "sha256:e8ae8978aef4bf8ab3d0e210eee28bf76f173266505ccccf233643784d7be9c3" [label="sha256:e8ae8978aef4bf8ab3d0e210eee28bf76f173266505ccccf233643784d7be9c3" shape="plaintext"];
  "sha256:2318074b4e919604b6424223d8520a394530cc3834b524a7a56561d334dd7db5" -> "sha256:a7faaf8eebfea4a2a9a5eb25b0f9d56010bc50ea6282f1a08cfd07de3fdb8216" [label=""];
  "sha256:a7faaf8eebfea4a2a9a5eb25b0f9d56010bc50ea6282f1a08cfd07de3fdb8216" -> "sha256:200a03ec30c1e7cbce3ac62834414fde8ca79e648aa25283d2cb8ffe36ec8478" [label=""];
  "sha256:200a03ec30c1e7cbce3ac62834414fde8ca79e648aa25283d2cb8ffe36ec8478" -> "sha256:7df27c1de76a806f27cec392ecebf1d32103427376660dfdae9faed6d7a66245" [label=""];
  "sha256:7df27c1de76a806f27cec392ecebf1d32103427376660dfdae9faed6d7a66245" -> "sha256:e8ae8978aef4bf8ab3d0e210eee28bf76f173266505ccccf233643784d7be9c3" [label=""];
}

