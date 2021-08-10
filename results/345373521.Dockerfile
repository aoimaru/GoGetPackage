[app/sources/345373521.Dockerfile]
digraph {
  "sha256:9ea0511f485c9d59b15605465a4b6165c32cd4d4e22becb503da9e5e9dd2d6d6" [label="docker-image://docker.io/balenalib/kitra520-ubuntu:artful-build" shape="ellipse"];
  "sha256:8479b6f96cb7952e90fa24fc3e18255f24a61c62da58491fbb495fa582688ac8" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:23bc6c396079c34f12cef42ecdd26286dba1e72b5a4c4f3d151b6ad7815b00c6" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:99356730815689d1280889cc7d15ed9bd1e28684b9807eefa18ec3d3f8c10742" [label="mkdir{path=/go}" shape="note"];
  "sha256:58edbd888bd4f317b38383620f70a34e35633edbc9ad059379ac67ba4d7df36a" [label="sha256:58edbd888bd4f317b38383620f70a34e35633edbc9ad059379ac67ba4d7df36a" shape="plaintext"];
  "sha256:9ea0511f485c9d59b15605465a4b6165c32cd4d4e22becb503da9e5e9dd2d6d6" -> "sha256:8479b6f96cb7952e90fa24fc3e18255f24a61c62da58491fbb495fa582688ac8" [label=""];
  "sha256:8479b6f96cb7952e90fa24fc3e18255f24a61c62da58491fbb495fa582688ac8" -> "sha256:23bc6c396079c34f12cef42ecdd26286dba1e72b5a4c4f3d151b6ad7815b00c6" [label=""];
  "sha256:23bc6c396079c34f12cef42ecdd26286dba1e72b5a4c4f3d151b6ad7815b00c6" -> "sha256:99356730815689d1280889cc7d15ed9bd1e28684b9807eefa18ec3d3f8c10742" [label=""];
  "sha256:99356730815689d1280889cc7d15ed9bd1e28684b9807eefa18ec3d3f8c10742" -> "sha256:58edbd888bd4f317b38383620f70a34e35633edbc9ad059379ac67ba4d7df36a" [label=""];
}

