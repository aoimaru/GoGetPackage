[app/sources/345358016.Dockerfile]
digraph {
  "sha256:2b6593e66b9ec72200666788609187809ea3970fe4f689368bda812b9afe2f8e" [label="docker-image://docker.io/balenalib/raspberry-pi2-debian:jessie-run" shape="ellipse"];
  "sha256:653c71f13fc156288cc4daeb75dc3e36bd3b46ec277510d798d18ceea6130ba7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:46d59ad0e5940d1b6a0cf7317497fd0065bd67573d3db85835a65abc8d97e5d6" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:d7a89d16638e09ef28c20644a2ac0e81bb22631a178695f45e705d99c978d09c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:04beeeb46d67227fccf6411ff0804c5b49dbd7030cf38bbd1de33235b54e964d" [label="mkdir{path=/go}" shape="note"];
  "sha256:b1f85f0e36d03003aba518e7407808bc69d07c8ad672d8ba28e1c8f113479f90" [label="sha256:b1f85f0e36d03003aba518e7407808bc69d07c8ad672d8ba28e1c8f113479f90" shape="plaintext"];
  "sha256:2b6593e66b9ec72200666788609187809ea3970fe4f689368bda812b9afe2f8e" -> "sha256:653c71f13fc156288cc4daeb75dc3e36bd3b46ec277510d798d18ceea6130ba7" [label=""];
  "sha256:653c71f13fc156288cc4daeb75dc3e36bd3b46ec277510d798d18ceea6130ba7" -> "sha256:46d59ad0e5940d1b6a0cf7317497fd0065bd67573d3db85835a65abc8d97e5d6" [label=""];
  "sha256:46d59ad0e5940d1b6a0cf7317497fd0065bd67573d3db85835a65abc8d97e5d6" -> "sha256:d7a89d16638e09ef28c20644a2ac0e81bb22631a178695f45e705d99c978d09c" [label=""];
  "sha256:d7a89d16638e09ef28c20644a2ac0e81bb22631a178695f45e705d99c978d09c" -> "sha256:04beeeb46d67227fccf6411ff0804c5b49dbd7030cf38bbd1de33235b54e964d" [label=""];
  "sha256:04beeeb46d67227fccf6411ff0804c5b49dbd7030cf38bbd1de33235b54e964d" -> "sha256:b1f85f0e36d03003aba518e7407808bc69d07c8ad672d8ba28e1c8f113479f90" [label=""];
}

