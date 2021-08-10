[app/sources/345358157.Dockerfile]
digraph {
  "sha256:f7d5f9dc77a9e0cd865c38b4fa3e194723e9b72b1cd1aeaf5b0090a68c46d637" [label="docker-image://docker.io/balenalib/raspberrypi3-64-fedora:30-build" shape="ellipse"];
  "sha256:5cdce1cab575974bf414c5cdbbc541f99bf231aa1e18af3021cd7a2cdbaed1c6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:260e40d8b52ee8c9056a9e5be102a248a886f46c00427b77d9e9804222a30131" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b9224d34591f063fb385334872939a977e7ef0d8c553596ca821f7ac000d74c3" [label="mkdir{path=/go}" shape="note"];
  "sha256:caf34439c11b9a6c22d4c130dbb99fe92fac27b55838c90dfaeee0e080b2d066" [label="sha256:caf34439c11b9a6c22d4c130dbb99fe92fac27b55838c90dfaeee0e080b2d066" shape="plaintext"];
  "sha256:f7d5f9dc77a9e0cd865c38b4fa3e194723e9b72b1cd1aeaf5b0090a68c46d637" -> "sha256:5cdce1cab575974bf414c5cdbbc541f99bf231aa1e18af3021cd7a2cdbaed1c6" [label=""];
  "sha256:5cdce1cab575974bf414c5cdbbc541f99bf231aa1e18af3021cd7a2cdbaed1c6" -> "sha256:260e40d8b52ee8c9056a9e5be102a248a886f46c00427b77d9e9804222a30131" [label=""];
  "sha256:260e40d8b52ee8c9056a9e5be102a248a886f46c00427b77d9e9804222a30131" -> "sha256:b9224d34591f063fb385334872939a977e7ef0d8c553596ca821f7ac000d74c3" [label=""];
  "sha256:b9224d34591f063fb385334872939a977e7ef0d8c553596ca821f7ac000d74c3" -> "sha256:caf34439c11b9a6c22d4c130dbb99fe92fac27b55838c90dfaeee0e080b2d066" [label=""];
}

