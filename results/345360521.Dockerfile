[app/sources/345360521.Dockerfile]
digraph {
  "sha256:d357d3a3148b855edecfdba7a0f5f0dc3fa9392d44bb823204539610650bf462" [label="docker-image://docker.io/balenalib/stem-x86-32-debian:sid-build" shape="ellipse"];
  "sha256:932584fec9bb55b76a4122e1368eaea1daaaf311c8a43238c5ac6e070ee21c54" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-386.tar.gz\" \t&& echo \"10202da0b7f2a0f2c2ec4dd65375584dd829ce88ccc58e5fe1fa1352e69fecaf  go$GO_VERSION.linux-386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-386.tar.gz" shape="box"];
  "sha256:095486388fc0021e64df8c359dabb9e71e4f2231654794cf43a1a2aba39add0b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:92050e7c22f01f706b9471edc904a6cae4a55d341ebbb00525860711af11e73b" [label="mkdir{path=/go}" shape="note"];
  "sha256:fb63b9592f4c891fe8af4df29dcaaacf60b78127a4ea540d31578d0c092b8bd1" [label="sha256:fb63b9592f4c891fe8af4df29dcaaacf60b78127a4ea540d31578d0c092b8bd1" shape="plaintext"];
  "sha256:d357d3a3148b855edecfdba7a0f5f0dc3fa9392d44bb823204539610650bf462" -> "sha256:932584fec9bb55b76a4122e1368eaea1daaaf311c8a43238c5ac6e070ee21c54" [label=""];
  "sha256:932584fec9bb55b76a4122e1368eaea1daaaf311c8a43238c5ac6e070ee21c54" -> "sha256:095486388fc0021e64df8c359dabb9e71e4f2231654794cf43a1a2aba39add0b" [label=""];
  "sha256:095486388fc0021e64df8c359dabb9e71e4f2231654794cf43a1a2aba39add0b" -> "sha256:92050e7c22f01f706b9471edc904a6cae4a55d341ebbb00525860711af11e73b" [label=""];
  "sha256:92050e7c22f01f706b9471edc904a6cae4a55d341ebbb00525860711af11e73b" -> "sha256:fb63b9592f4c891fe8af4df29dcaaacf60b78127a4ea540d31578d0c092b8bd1" [label=""];
}

