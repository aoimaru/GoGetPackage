[app/sources/345357187.Dockerfile]
digraph {
  "sha256:ffb316fee85eaeb9956f284155c8bdc9a8d11091174552401115aef1f1b471a4" [label="docker-image://docker.io/balenalib/orangepi-plus2-debian:sid-run" shape="ellipse"];
  "sha256:01e474e897e51c8902c14cddd11252cb3723356502fea75bcc85543558e90fac" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f6829fd85ea8407655a5e368aab785b7e509091f8a7bb2941c5e8878421c2df2" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:5f105064c98fc6d8f7191e79d7868ffde0021c3f9cf09ee958d19dabb7639a72" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:91e980f01d71b74f00b49c003397db5a6541e871b3bfb061e2a33b48c7e251a9" [label="mkdir{path=/go}" shape="note"];
  "sha256:62bc1331e54ee378bf3f014b80b89f4027a9a9e7d2c26ff845f2caa13e883e25" [label="sha256:62bc1331e54ee378bf3f014b80b89f4027a9a9e7d2c26ff845f2caa13e883e25" shape="plaintext"];
  "sha256:ffb316fee85eaeb9956f284155c8bdc9a8d11091174552401115aef1f1b471a4" -> "sha256:01e474e897e51c8902c14cddd11252cb3723356502fea75bcc85543558e90fac" [label=""];
  "sha256:01e474e897e51c8902c14cddd11252cb3723356502fea75bcc85543558e90fac" -> "sha256:f6829fd85ea8407655a5e368aab785b7e509091f8a7bb2941c5e8878421c2df2" [label=""];
  "sha256:f6829fd85ea8407655a5e368aab785b7e509091f8a7bb2941c5e8878421c2df2" -> "sha256:5f105064c98fc6d8f7191e79d7868ffde0021c3f9cf09ee958d19dabb7639a72" [label=""];
  "sha256:5f105064c98fc6d8f7191e79d7868ffde0021c3f9cf09ee958d19dabb7639a72" -> "sha256:91e980f01d71b74f00b49c003397db5a6541e871b3bfb061e2a33b48c7e251a9" [label=""];
  "sha256:91e980f01d71b74f00b49c003397db5a6541e871b3bfb061e2a33b48c7e251a9" -> "sha256:62bc1331e54ee378bf3f014b80b89f4027a9a9e7d2c26ff845f2caa13e883e25" [label=""];
}

