[app/sources/345360329.Dockerfile]
digraph {
  "sha256:07de0acf860521362cfc4b5b2a969b78fcd781aff8fb280de50ffd8b61b1b568" [label="docker-image://docker.io/balenalib/srd3-tx2-debian:stretch-build" shape="ellipse"];
  "sha256:090b9f78d6d683a7d3afdc0af36d7624b3ea580fb6175005aab9e03360d24ffa" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:9701f8f48e479db8f28309d1996ed2653e3154bf7b646178936bd1299ebdd92c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7dc04666bc51a802430b3fbcfcdbff27f51fb924deb914626c08e183bcbfbf04" [label="mkdir{path=/go}" shape="note"];
  "sha256:accadb50f09f8de92d842676fdf28fdc4fce9e9780e37940025a914d078c8952" [label="sha256:accadb50f09f8de92d842676fdf28fdc4fce9e9780e37940025a914d078c8952" shape="plaintext"];
  "sha256:07de0acf860521362cfc4b5b2a969b78fcd781aff8fb280de50ffd8b61b1b568" -> "sha256:090b9f78d6d683a7d3afdc0af36d7624b3ea580fb6175005aab9e03360d24ffa" [label=""];
  "sha256:090b9f78d6d683a7d3afdc0af36d7624b3ea580fb6175005aab9e03360d24ffa" -> "sha256:9701f8f48e479db8f28309d1996ed2653e3154bf7b646178936bd1299ebdd92c" [label=""];
  "sha256:9701f8f48e479db8f28309d1996ed2653e3154bf7b646178936bd1299ebdd92c" -> "sha256:7dc04666bc51a802430b3fbcfcdbff27f51fb924deb914626c08e183bcbfbf04" [label=""];
  "sha256:7dc04666bc51a802430b3fbcfcdbff27f51fb924deb914626c08e183bcbfbf04" -> "sha256:accadb50f09f8de92d842676fdf28fdc4fce9e9780e37940025a914d078c8952" [label=""];
}

