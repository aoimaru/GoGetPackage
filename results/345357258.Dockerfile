[app/sources/345357258.Dockerfile]
digraph {
  "sha256:ab648a7eea33a5524e32816e19322f6b88888cccdfe83018ee771c0d2925065d" [label="docker-image://docker.io/balenalib/orangepi-plus2-ubuntu:trusty-run" shape="ellipse"];
  "sha256:cdb79a496dc6140616b25795c507ce450bfe1f59cbf224e7eaf8aa00a9f18c4b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ddf6cf69665fa2a9bcd82ad98f234d8eba5c135d78c60a84395445bd0e8d03c8" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:18944da0aec176a9358492bff46e5ecac138a5a8d77bd1a7f55cde403682927f" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:954ab446a56e1caf0208ff5429ebca696d4e8e0ff298cc1a3f55e48a538c0941" [label="mkdir{path=/go}" shape="note"];
  "sha256:decdfc49e2a17fa9a40c26cef9d1faca36b017f5b5654f29190bf0bc3c02b2d0" [label="sha256:decdfc49e2a17fa9a40c26cef9d1faca36b017f5b5654f29190bf0bc3c02b2d0" shape="plaintext"];
  "sha256:ab648a7eea33a5524e32816e19322f6b88888cccdfe83018ee771c0d2925065d" -> "sha256:cdb79a496dc6140616b25795c507ce450bfe1f59cbf224e7eaf8aa00a9f18c4b" [label=""];
  "sha256:cdb79a496dc6140616b25795c507ce450bfe1f59cbf224e7eaf8aa00a9f18c4b" -> "sha256:ddf6cf69665fa2a9bcd82ad98f234d8eba5c135d78c60a84395445bd0e8d03c8" [label=""];
  "sha256:ddf6cf69665fa2a9bcd82ad98f234d8eba5c135d78c60a84395445bd0e8d03c8" -> "sha256:18944da0aec176a9358492bff46e5ecac138a5a8d77bd1a7f55cde403682927f" [label=""];
  "sha256:18944da0aec176a9358492bff46e5ecac138a5a8d77bd1a7f55cde403682927f" -> "sha256:954ab446a56e1caf0208ff5429ebca696d4e8e0ff298cc1a3f55e48a538c0941" [label=""];
  "sha256:954ab446a56e1caf0208ff5429ebca696d4e8e0ff298cc1a3f55e48a538c0941" -> "sha256:decdfc49e2a17fa9a40c26cef9d1faca36b017f5b5654f29190bf0bc3c02b2d0" [label=""];
}

