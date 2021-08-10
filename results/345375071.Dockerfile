[app/sources/345375071.Dockerfile]
digraph {
  "sha256:8773d9e5273695f09e7491eb7759aa190f2452c778c6db857d6a20f111f61314" [label="docker-image://docker.io/balenalib/nitrogen6x-fedora:29-build" shape="ellipse"];
  "sha256:c94fa7b7e4c261436412ce59715424cc7e2c0d4134a129aa9338d8ecbf3da3b2" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:cc001f147195ca6d2869c9eebe9cdf1fe706cbaf87aa66c4979fab67df247e98" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:58276c781c6cb7609be273c0be188a010e45953e8a8f677a5379a10398cef7dd" [label="mkdir{path=/go}" shape="note"];
  "sha256:e5af8dde5fc737fd9ac47246737c2dad26752cadaad15bce31c3b38f80e00055" [label="sha256:e5af8dde5fc737fd9ac47246737c2dad26752cadaad15bce31c3b38f80e00055" shape="plaintext"];
  "sha256:8773d9e5273695f09e7491eb7759aa190f2452c778c6db857d6a20f111f61314" -> "sha256:c94fa7b7e4c261436412ce59715424cc7e2c0d4134a129aa9338d8ecbf3da3b2" [label=""];
  "sha256:c94fa7b7e4c261436412ce59715424cc7e2c0d4134a129aa9338d8ecbf3da3b2" -> "sha256:cc001f147195ca6d2869c9eebe9cdf1fe706cbaf87aa66c4979fab67df247e98" [label=""];
  "sha256:cc001f147195ca6d2869c9eebe9cdf1fe706cbaf87aa66c4979fab67df247e98" -> "sha256:58276c781c6cb7609be273c0be188a010e45953e8a8f677a5379a10398cef7dd" [label=""];
  "sha256:58276c781c6cb7609be273c0be188a010e45953e8a8f677a5379a10398cef7dd" -> "sha256:e5af8dde5fc737fd9ac47246737c2dad26752cadaad15bce31c3b38f80e00055" [label=""];
}

