[app/sources/345375817.Dockerfile]
digraph {
  "sha256:cb91117bf88fb6e029b94f95b01f1aafd40657a1a4d7b61765c64f5f3dbb25d1" [label="docker-image://docker.io/balenalib/orange-pi-zero-fedora:26-build" shape="ellipse"];
  "sha256:199bbec685b7557797906a2b9782e4dd6eb354efb218641981f648e750e69821" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:3bdcbac860d870bd46437093095a87f8d83c0d98ca21c60b2afc35bde79c8fca" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e4be582423b06fcb8d15999026e6f57559672c62b36e0779a4b39eb2b16374e3" [label="mkdir{path=/go}" shape="note"];
  "sha256:dbc4024ee74a5d6312d27738210d839eb09d8e2651605dc4cbfb3285c17216bb" [label="sha256:dbc4024ee74a5d6312d27738210d839eb09d8e2651605dc4cbfb3285c17216bb" shape="plaintext"];
  "sha256:cb91117bf88fb6e029b94f95b01f1aafd40657a1a4d7b61765c64f5f3dbb25d1" -> "sha256:199bbec685b7557797906a2b9782e4dd6eb354efb218641981f648e750e69821" [label=""];
  "sha256:199bbec685b7557797906a2b9782e4dd6eb354efb218641981f648e750e69821" -> "sha256:3bdcbac860d870bd46437093095a87f8d83c0d98ca21c60b2afc35bde79c8fca" [label=""];
  "sha256:3bdcbac860d870bd46437093095a87f8d83c0d98ca21c60b2afc35bde79c8fca" -> "sha256:e4be582423b06fcb8d15999026e6f57559672c62b36e0779a4b39eb2b16374e3" [label=""];
  "sha256:e4be582423b06fcb8d15999026e6f57559672c62b36e0779a4b39eb2b16374e3" -> "sha256:dbc4024ee74a5d6312d27738210d839eb09d8e2651605dc4cbfb3285c17216bb" [label=""];
}

