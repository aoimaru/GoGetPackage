[app/sources/345368149.Dockerfile]
digraph {
  "sha256:6d5cbcd80d2be5c5c323ac5ea18f42e48cb1f37eefdf02147d6a0889c3798734" [label="docker-image://docker.io/balenalib/artik710-debian:stretch-run" shape="ellipse"];
  "sha256:cac92d347515c33c015ba511ec4e2228a047bd28cd91fd0f4ae08cef030b3dd5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:eda7c153654ba43e7363c9291cc056034dd7ff4148bbd3e5aebb6a3e3032bbb2" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:f17a5318ed76a289531e8163f129962c93cf6e70ba7cb0147152b45a4f75e527" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:dcf0e5a97f52169e2371d724817881be194c48929a534d63cecdc2a39a3cad45" [label="mkdir{path=/go}" shape="note"];
  "sha256:ae119019b35ac3a058b2958edf1b650c68678ad46e83a01e1c187cf61d75ada9" [label="sha256:ae119019b35ac3a058b2958edf1b650c68678ad46e83a01e1c187cf61d75ada9" shape="plaintext"];
  "sha256:6d5cbcd80d2be5c5c323ac5ea18f42e48cb1f37eefdf02147d6a0889c3798734" -> "sha256:cac92d347515c33c015ba511ec4e2228a047bd28cd91fd0f4ae08cef030b3dd5" [label=""];
  "sha256:cac92d347515c33c015ba511ec4e2228a047bd28cd91fd0f4ae08cef030b3dd5" -> "sha256:eda7c153654ba43e7363c9291cc056034dd7ff4148bbd3e5aebb6a3e3032bbb2" [label=""];
  "sha256:eda7c153654ba43e7363c9291cc056034dd7ff4148bbd3e5aebb6a3e3032bbb2" -> "sha256:f17a5318ed76a289531e8163f129962c93cf6e70ba7cb0147152b45a4f75e527" [label=""];
  "sha256:f17a5318ed76a289531e8163f129962c93cf6e70ba7cb0147152b45a4f75e527" -> "sha256:dcf0e5a97f52169e2371d724817881be194c48929a534d63cecdc2a39a3cad45" [label=""];
  "sha256:dcf0e5a97f52169e2371d724817881be194c48929a534d63cecdc2a39a3cad45" -> "sha256:ae119019b35ac3a058b2958edf1b650c68678ad46e83a01e1c187cf61d75ada9" [label=""];
}

