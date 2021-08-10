[app/sources/345368181.Dockerfile]
digraph {
  "sha256:05f57fc21985340413fa787f8b54be5bfa184bad00ea543438163256ae2a060a" [label="docker-image://docker.io/balenalib/artik710-ubuntu:bionic-run" shape="ellipse"];
  "sha256:1ac59a20deeb742a8e4969e12badd7ff2920e6ee670688ea7e884a35583abb9f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a3ddc6e3ae370f0ba51590e91dd28cc16cad25dc879e92ef86fa0c1a1005bfdf" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:a1920c459b87452b54205e5caa539b7ad2c6d4c953d40cd3a870e774fe820cb7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:fe6d08a14148fb579e62dbfc577f1d32b79ca9b01972cfb5763a49465c5904a3" [label="mkdir{path=/go}" shape="note"];
  "sha256:7205e23bc15e7b2153f979cd1135c8a1aad98f5fa93a611589a7b1a1fd0f7369" [label="sha256:7205e23bc15e7b2153f979cd1135c8a1aad98f5fa93a611589a7b1a1fd0f7369" shape="plaintext"];
  "sha256:05f57fc21985340413fa787f8b54be5bfa184bad00ea543438163256ae2a060a" -> "sha256:1ac59a20deeb742a8e4969e12badd7ff2920e6ee670688ea7e884a35583abb9f" [label=""];
  "sha256:1ac59a20deeb742a8e4969e12badd7ff2920e6ee670688ea7e884a35583abb9f" -> "sha256:a3ddc6e3ae370f0ba51590e91dd28cc16cad25dc879e92ef86fa0c1a1005bfdf" [label=""];
  "sha256:a3ddc6e3ae370f0ba51590e91dd28cc16cad25dc879e92ef86fa0c1a1005bfdf" -> "sha256:a1920c459b87452b54205e5caa539b7ad2c6d4c953d40cd3a870e774fe820cb7" [label=""];
  "sha256:a1920c459b87452b54205e5caa539b7ad2c6d4c953d40cd3a870e774fe820cb7" -> "sha256:fe6d08a14148fb579e62dbfc577f1d32b79ca9b01972cfb5763a49465c5904a3" [label=""];
  "sha256:fe6d08a14148fb579e62dbfc577f1d32b79ca9b01972cfb5763a49465c5904a3" -> "sha256:7205e23bc15e7b2153f979cd1135c8a1aad98f5fa93a611589a7b1a1fd0f7369" [label=""];
}

