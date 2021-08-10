[app/sources/345371227.Dockerfile]
digraph {
  "sha256:915577ee9d535272b543bcb63fb0cd16fba73a4141cac4cbb0b33c97a90ce3ca" [label="docker-image://docker.io/balenalib/blackboard-tx2-debian:sid-run@sha256:a35c712df648e34807816a1f4be88084899244d0cfbe6b690739ccfdbd669b93" shape="ellipse"];
  "sha256:65e045453be2c650e7ebec210492fc7afd170d0d19971d02a333a873a0f18701" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:51f4dc9dfe89acad3b0fb377aca7e287372387b17ba7e8c6aebd65cca67aa029" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:b2bb30c1b311ca8a9eca9e40906a578edcc7256c4a1f7f6a4c618283fad396f4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:eb4c79938add2bd509dbe42d0103d27a6dc9b96eef1974ad2be2b0073fb63037" [label="mkdir{path=/go}" shape="note"];
  "sha256:7a24c4f683531ee2f8e4add3513e551bd3ee12a0eb3a6285a22e180a27e685db" [label="sha256:7a24c4f683531ee2f8e4add3513e551bd3ee12a0eb3a6285a22e180a27e685db" shape="plaintext"];
  "sha256:915577ee9d535272b543bcb63fb0cd16fba73a4141cac4cbb0b33c97a90ce3ca" -> "sha256:65e045453be2c650e7ebec210492fc7afd170d0d19971d02a333a873a0f18701" [label=""];
  "sha256:65e045453be2c650e7ebec210492fc7afd170d0d19971d02a333a873a0f18701" -> "sha256:51f4dc9dfe89acad3b0fb377aca7e287372387b17ba7e8c6aebd65cca67aa029" [label=""];
  "sha256:51f4dc9dfe89acad3b0fb377aca7e287372387b17ba7e8c6aebd65cca67aa029" -> "sha256:b2bb30c1b311ca8a9eca9e40906a578edcc7256c4a1f7f6a4c618283fad396f4" [label=""];
  "sha256:b2bb30c1b311ca8a9eca9e40906a578edcc7256c4a1f7f6a4c618283fad396f4" -> "sha256:eb4c79938add2bd509dbe42d0103d27a6dc9b96eef1974ad2be2b0073fb63037" [label=""];
  "sha256:eb4c79938add2bd509dbe42d0103d27a6dc9b96eef1974ad2be2b0073fb63037" -> "sha256:7a24c4f683531ee2f8e4add3513e551bd3ee12a0eb3a6285a22e180a27e685db" [label=""];
}

