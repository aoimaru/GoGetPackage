[app/sources/345361480.Dockerfile]
digraph {
  "sha256:f9ec7c4675cf4b3cff47cd2eefd4c3e956617d611e49db842dee578ed07eeb9b" [label="docker-image://docker.io/balenalib/var-som-mx6-fedora:26-build" shape="ellipse"];
  "sha256:402ed9f61968ad765da5e66dfc61076ab60f3df41500a05c08c57b287b4c449e" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:e3b37d38885de9ad527bc9bd37b6a7905cad4cd9fc77d0efa566d377544be0ca" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:96e11667abcd6d52cdb0692e3876ebca36be9a1cac2a8860352c962587a0db8d" [label="mkdir{path=/go}" shape="note"];
  "sha256:288ab212930749b36a1d07ffe3d848758c7e92bfe0a4782ab0bd3fb13a4d3d0a" [label="sha256:288ab212930749b36a1d07ffe3d848758c7e92bfe0a4782ab0bd3fb13a4d3d0a" shape="plaintext"];
  "sha256:f9ec7c4675cf4b3cff47cd2eefd4c3e956617d611e49db842dee578ed07eeb9b" -> "sha256:402ed9f61968ad765da5e66dfc61076ab60f3df41500a05c08c57b287b4c449e" [label=""];
  "sha256:402ed9f61968ad765da5e66dfc61076ab60f3df41500a05c08c57b287b4c449e" -> "sha256:e3b37d38885de9ad527bc9bd37b6a7905cad4cd9fc77d0efa566d377544be0ca" [label=""];
  "sha256:e3b37d38885de9ad527bc9bd37b6a7905cad4cd9fc77d0efa566d377544be0ca" -> "sha256:96e11667abcd6d52cdb0692e3876ebca36be9a1cac2a8860352c962587a0db8d" [label=""];
  "sha256:96e11667abcd6d52cdb0692e3876ebca36be9a1cac2a8860352c962587a0db8d" -> "sha256:288ab212930749b36a1d07ffe3d848758c7e92bfe0a4782ab0bd3fb13a4d3d0a" [label=""];
}

