[app/sources/345368076.Dockerfile]
digraph {
  "sha256:2f50ccd358ddcc764d7e92f79b3080eb1fbc22ef40f9df78259cdd0d24fab9e3" [label="docker-image://docker.io/balenalib/artik533s-ubuntu:cosmic-build" shape="ellipse"];
  "sha256:dbfbc174342d27b9bd49d3326ef198c0b62b43a935605b0192ed4b69f3fac276" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:bca35db7ceb69706a23fd333ec7b15aff32925068dc237eca0f15164184db5a1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9ee47a9a1203731f22ec299b9d5243d145bc4407eb6469aa9529c515a2a3cbf3" [label="mkdir{path=/go}" shape="note"];
  "sha256:a1c7ed85bcae919740a58a03af9c5dcc00f0f58b8d15622d203d5ee8c254c180" [label="sha256:a1c7ed85bcae919740a58a03af9c5dcc00f0f58b8d15622d203d5ee8c254c180" shape="plaintext"];
  "sha256:2f50ccd358ddcc764d7e92f79b3080eb1fbc22ef40f9df78259cdd0d24fab9e3" -> "sha256:dbfbc174342d27b9bd49d3326ef198c0b62b43a935605b0192ed4b69f3fac276" [label=""];
  "sha256:dbfbc174342d27b9bd49d3326ef198c0b62b43a935605b0192ed4b69f3fac276" -> "sha256:bca35db7ceb69706a23fd333ec7b15aff32925068dc237eca0f15164184db5a1" [label=""];
  "sha256:bca35db7ceb69706a23fd333ec7b15aff32925068dc237eca0f15164184db5a1" -> "sha256:9ee47a9a1203731f22ec299b9d5243d145bc4407eb6469aa9529c515a2a3cbf3" [label=""];
  "sha256:9ee47a9a1203731f22ec299b9d5243d145bc4407eb6469aa9529c515a2a3cbf3" -> "sha256:a1c7ed85bcae919740a58a03af9c5dcc00f0f58b8d15622d203d5ee8c254c180" [label=""];
}

