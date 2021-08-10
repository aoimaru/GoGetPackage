[app/sources/345368041.Dockerfile]
digraph {
  "sha256:ba8e355a9aa8673dd37a2b427a6f5249a7ab5222dfcd9057021f468dfacc10d4" [label="docker-image://docker.io/balenalib/artik533s-debian:stretch-run" shape="ellipse"];
  "sha256:4325f5fc9b463fbba76fbca12777e24e9e4a4cfb2b1ccc2543845f051676648a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a9ddde0d6bd734cb3ef7453f58a901b1c2f0cb7b61fac55e5ed0a1dbdd31d119" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:4e27efc52179d8f1bc683abef4959edd2f8374cf5fc5f96390ffb2abee625b48" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2ec72fd9db70566ced8c938fe0524991a9ed1c2f6176756d230aae6ea3cf4a6a" [label="mkdir{path=/go}" shape="note"];
  "sha256:3762574a4ec69356640e9690dd6f46d6bf048426a0c417503d0d2c4f1b9480d4" [label="sha256:3762574a4ec69356640e9690dd6f46d6bf048426a0c417503d0d2c4f1b9480d4" shape="plaintext"];
  "sha256:ba8e355a9aa8673dd37a2b427a6f5249a7ab5222dfcd9057021f468dfacc10d4" -> "sha256:4325f5fc9b463fbba76fbca12777e24e9e4a4cfb2b1ccc2543845f051676648a" [label=""];
  "sha256:4325f5fc9b463fbba76fbca12777e24e9e4a4cfb2b1ccc2543845f051676648a" -> "sha256:a9ddde0d6bd734cb3ef7453f58a901b1c2f0cb7b61fac55e5ed0a1dbdd31d119" [label=""];
  "sha256:a9ddde0d6bd734cb3ef7453f58a901b1c2f0cb7b61fac55e5ed0a1dbdd31d119" -> "sha256:4e27efc52179d8f1bc683abef4959edd2f8374cf5fc5f96390ffb2abee625b48" [label=""];
  "sha256:4e27efc52179d8f1bc683abef4959edd2f8374cf5fc5f96390ffb2abee625b48" -> "sha256:2ec72fd9db70566ced8c938fe0524991a9ed1c2f6176756d230aae6ea3cf4a6a" [label=""];
  "sha256:2ec72fd9db70566ced8c938fe0524991a9ed1c2f6176756d230aae6ea3cf4a6a" -> "sha256:3762574a4ec69356640e9690dd6f46d6bf048426a0c417503d0d2c4f1b9480d4" [label=""];
}

