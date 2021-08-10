[app/sources/345370841.Dockerfile]
digraph {
  "sha256:10d4bcff1d8f7b8bfae758c5913bce072029e92c50e84f50fde3ab72edc19e31" [label="docker-image://docker.io/balenalib/beaglebone-fastenal-ubuntu:trusty-run" shape="ellipse"];
  "sha256:16f554dbe326699358ab7dd0c940a7073a69a3fd87530f12aef7ada13d21e7d1" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:754cc92770017d72a332771ed5f3b866653258fc470643823d316798f1638487" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:84f42b4751ab692e345e62410fdab779fc706aa1e737502f8b0f5accf51fc48d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2f83f81ecd8df1393e6dc6d371fb215e139b178d724d51d6680e0db895e14a11" [label="mkdir{path=/go}" shape="note"];
  "sha256:8006a0911450e0c1e6856a4ab2c6a94f7205bff18a767f8dfd2ba8a17242cdc6" [label="sha256:8006a0911450e0c1e6856a4ab2c6a94f7205bff18a767f8dfd2ba8a17242cdc6" shape="plaintext"];
  "sha256:10d4bcff1d8f7b8bfae758c5913bce072029e92c50e84f50fde3ab72edc19e31" -> "sha256:16f554dbe326699358ab7dd0c940a7073a69a3fd87530f12aef7ada13d21e7d1" [label=""];
  "sha256:16f554dbe326699358ab7dd0c940a7073a69a3fd87530f12aef7ada13d21e7d1" -> "sha256:754cc92770017d72a332771ed5f3b866653258fc470643823d316798f1638487" [label=""];
  "sha256:754cc92770017d72a332771ed5f3b866653258fc470643823d316798f1638487" -> "sha256:84f42b4751ab692e345e62410fdab779fc706aa1e737502f8b0f5accf51fc48d" [label=""];
  "sha256:84f42b4751ab692e345e62410fdab779fc706aa1e737502f8b0f5accf51fc48d" -> "sha256:2f83f81ecd8df1393e6dc6d371fb215e139b178d724d51d6680e0db895e14a11" [label=""];
  "sha256:2f83f81ecd8df1393e6dc6d371fb215e139b178d724d51d6680e0db895e14a11" -> "sha256:8006a0911450e0c1e6856a4ab2c6a94f7205bff18a767f8dfd2ba8a17242cdc6" [label=""];
}

