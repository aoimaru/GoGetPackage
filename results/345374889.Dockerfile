[app/sources/345374889.Dockerfile]
digraph {
  "sha256:5753eb37a298c4871445900d1fc7ff380eec183426a898de9f206b8d39e6320a" [label="docker-image://docker.io/balenalib/nanopi-neo-air-alpine:3.5-build" shape="ellipse"];
  "sha256:abcda56e925a436ea13c5ee11bb0a4a1e908deaf8250b97ac4d684bada44d83f" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:df937c75ed0c9241528acc2015ae0ac6370abd9a90414b9827df2014a3db5e82" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:452c1c97470f0704bf781a3ed104690c823258aba8cd33d3c96b13a3dda23bc3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8a999513ba3527d47dd2af55799d2fc2b42a6613aca1e8ac6761d0a1d42d91c2" [label="mkdir{path=/go}" shape="note"];
  "sha256:0d3d61a0c0ed8983e5c7bb7ca9b48bd8a0caeda990221a16bb8557e6d768a50c" [label="sha256:0d3d61a0c0ed8983e5c7bb7ca9b48bd8a0caeda990221a16bb8557e6d768a50c" shape="plaintext"];
  "sha256:5753eb37a298c4871445900d1fc7ff380eec183426a898de9f206b8d39e6320a" -> "sha256:abcda56e925a436ea13c5ee11bb0a4a1e908deaf8250b97ac4d684bada44d83f" [label=""];
  "sha256:abcda56e925a436ea13c5ee11bb0a4a1e908deaf8250b97ac4d684bada44d83f" -> "sha256:df937c75ed0c9241528acc2015ae0ac6370abd9a90414b9827df2014a3db5e82" [label=""];
  "sha256:df937c75ed0c9241528acc2015ae0ac6370abd9a90414b9827df2014a3db5e82" -> "sha256:452c1c97470f0704bf781a3ed104690c823258aba8cd33d3c96b13a3dda23bc3" [label=""];
  "sha256:452c1c97470f0704bf781a3ed104690c823258aba8cd33d3c96b13a3dda23bc3" -> "sha256:8a999513ba3527d47dd2af55799d2fc2b42a6613aca1e8ac6761d0a1d42d91c2" [label=""];
  "sha256:8a999513ba3527d47dd2af55799d2fc2b42a6613aca1e8ac6761d0a1d42d91c2" -> "sha256:0d3d61a0c0ed8983e5c7bb7ca9b48bd8a0caeda990221a16bb8557e6d768a50c" [label=""];
}

