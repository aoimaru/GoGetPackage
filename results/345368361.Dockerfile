[app/sources/345368361.Dockerfile]
digraph {
  "sha256:d91b9a61af16df37ef25edf761dabf2b6ef269b5225f7ab09663eddeab3aa32c" [label="docker-image://docker.io/balenalib/asus-tinker-board-debian:sid-run" shape="ellipse"];
  "sha256:daaac27d567343ad450183a34bb7eb0752a02370e793f157e3be1da2e1e0f027" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:49af826353211adfaa17ec0e48faa3ff939b4e8ad8ed8216a6eefee78d5f529d" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:f5bb945dec3ce7e119c40ce7991fb1cb23b87934afb73d4153180b43e941ac01" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5dafc6e3499235acc2a6a62b0500142b81688a7ce6bf7120841c0f7b308de21d" [label="mkdir{path=/go}" shape="note"];
  "sha256:98880bad2573c6146fc990eba8955542d3f8854c8e8857117b087490c57bc544" [label="sha256:98880bad2573c6146fc990eba8955542d3f8854c8e8857117b087490c57bc544" shape="plaintext"];
  "sha256:d91b9a61af16df37ef25edf761dabf2b6ef269b5225f7ab09663eddeab3aa32c" -> "sha256:daaac27d567343ad450183a34bb7eb0752a02370e793f157e3be1da2e1e0f027" [label=""];
  "sha256:daaac27d567343ad450183a34bb7eb0752a02370e793f157e3be1da2e1e0f027" -> "sha256:49af826353211adfaa17ec0e48faa3ff939b4e8ad8ed8216a6eefee78d5f529d" [label=""];
  "sha256:49af826353211adfaa17ec0e48faa3ff939b4e8ad8ed8216a6eefee78d5f529d" -> "sha256:f5bb945dec3ce7e119c40ce7991fb1cb23b87934afb73d4153180b43e941ac01" [label=""];
  "sha256:f5bb945dec3ce7e119c40ce7991fb1cb23b87934afb73d4153180b43e941ac01" -> "sha256:5dafc6e3499235acc2a6a62b0500142b81688a7ce6bf7120841c0f7b308de21d" [label=""];
  "sha256:5dafc6e3499235acc2a6a62b0500142b81688a7ce6bf7120841c0f7b308de21d" -> "sha256:98880bad2573c6146fc990eba8955542d3f8854c8e8857117b087490c57bc544" [label=""];
}

