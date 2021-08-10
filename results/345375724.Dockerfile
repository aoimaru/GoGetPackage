[app/sources/345375724.Dockerfile]
digraph {
  "sha256:15562870ef431705a5bb38630831f30c0ca5e12cd91b155c2d78c6db928f8c31" [label="docker-image://docker.io/balenalib/orange-pi-one-ubuntu:artful-run" shape="ellipse"];
  "sha256:b2d1909dc25a9cf19ef48d324eb22c7fc9f84576a1a7d8660a769309ca7266ec" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b7507eb543db6bd9efde3ae2c3b87742ff6d26c2f724bdc3017754f6221c33c9" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:f01d2dad766a89ffc759ecf4209c882a2c7fccf76e1930cbfc7329121c8b88f8" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ab6349681e643ef88e795c4b5cfa30a8355f25eff8c2c1c09b2b18b09dba22f6" [label="mkdir{path=/go}" shape="note"];
  "sha256:662eb96d9609b5574b7a62ea91c7e24da9e675a21a63f3979d02a084fa1be64a" [label="sha256:662eb96d9609b5574b7a62ea91c7e24da9e675a21a63f3979d02a084fa1be64a" shape="plaintext"];
  "sha256:15562870ef431705a5bb38630831f30c0ca5e12cd91b155c2d78c6db928f8c31" -> "sha256:b2d1909dc25a9cf19ef48d324eb22c7fc9f84576a1a7d8660a769309ca7266ec" [label=""];
  "sha256:b2d1909dc25a9cf19ef48d324eb22c7fc9f84576a1a7d8660a769309ca7266ec" -> "sha256:b7507eb543db6bd9efde3ae2c3b87742ff6d26c2f724bdc3017754f6221c33c9" [label=""];
  "sha256:b7507eb543db6bd9efde3ae2c3b87742ff6d26c2f724bdc3017754f6221c33c9" -> "sha256:f01d2dad766a89ffc759ecf4209c882a2c7fccf76e1930cbfc7329121c8b88f8" [label=""];
  "sha256:f01d2dad766a89ffc759ecf4209c882a2c7fccf76e1930cbfc7329121c8b88f8" -> "sha256:ab6349681e643ef88e795c4b5cfa30a8355f25eff8c2c1c09b2b18b09dba22f6" [label=""];
  "sha256:ab6349681e643ef88e795c4b5cfa30a8355f25eff8c2c1c09b2b18b09dba22f6" -> "sha256:662eb96d9609b5574b7a62ea91c7e24da9e675a21a63f3979d02a084fa1be64a" [label=""];
}

