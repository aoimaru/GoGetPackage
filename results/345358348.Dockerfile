[app/sources/345358348.Dockerfile]
digraph {
  "sha256:325365843d7616aee7f7589194d6ecd14c352905ef1bc8a5a11fbcbe8d5d8122" [label="docker-image://docker.io/balenalib/revpi-core-3-debian:jessie-run@sha256:4fdcfc6c15268e9ff986387bc339c438e60e77ca4c05fc66c608cdfa2732c07f" shape="ellipse"];
  "sha256:abfcd475050a2b8636ba3abf1adcc61bfd8c190565860e531453722c0adb0f06" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:baa37c93b8d44d8ea68be5341b35598cd1672e9454bedec2afdce6e7cfd2f7ff" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:4dc03ba01228acf740fd74c580a7e73c3fb9ff4ebab0788ad2af5933a225ac32" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1d5369e5d89cae36894c6347d18c36486d573de65baf1894e81729a0742f774a" [label="mkdir{path=/go}" shape="note"];
  "sha256:1b9c04b21ba1d870d189692c919a6f8c8a737e803cc0abc3b8594beed4aa9aeb" [label="sha256:1b9c04b21ba1d870d189692c919a6f8c8a737e803cc0abc3b8594beed4aa9aeb" shape="plaintext"];
  "sha256:325365843d7616aee7f7589194d6ecd14c352905ef1bc8a5a11fbcbe8d5d8122" -> "sha256:abfcd475050a2b8636ba3abf1adcc61bfd8c190565860e531453722c0adb0f06" [label=""];
  "sha256:abfcd475050a2b8636ba3abf1adcc61bfd8c190565860e531453722c0adb0f06" -> "sha256:baa37c93b8d44d8ea68be5341b35598cd1672e9454bedec2afdce6e7cfd2f7ff" [label=""];
  "sha256:baa37c93b8d44d8ea68be5341b35598cd1672e9454bedec2afdce6e7cfd2f7ff" -> "sha256:4dc03ba01228acf740fd74c580a7e73c3fb9ff4ebab0788ad2af5933a225ac32" [label=""];
  "sha256:4dc03ba01228acf740fd74c580a7e73c3fb9ff4ebab0788ad2af5933a225ac32" -> "sha256:1d5369e5d89cae36894c6347d18c36486d573de65baf1894e81729a0742f774a" [label=""];
  "sha256:1d5369e5d89cae36894c6347d18c36486d573de65baf1894e81729a0742f774a" -> "sha256:1b9c04b21ba1d870d189692c919a6f8c8a737e803cc0abc3b8594beed4aa9aeb" [label=""];
}

