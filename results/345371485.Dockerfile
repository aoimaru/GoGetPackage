[app/sources/345371485.Dockerfile]
digraph {
  "sha256:d6484676aedfa73bc24e551fd849cb7d682c179c153d7095b8caaa5102e8d775" [label="docker-image://docker.io/balenalib/cl-som-imx8-ubuntu:artful-run" shape="ellipse"];
  "sha256:b4dd2ed46e64a89074364914fe410b3cd8e3c90c703ef8d0231bf6e786d45467" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:16d18564ff9c30280bd5f961be7ba7e8827b5170a321afa932693d05301cebb5" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:1f6877b6e854e5464394089c59fe6fcc20f8899bda683833506bfb7f7ebe82dc" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7207038237fca6f090bbcff0a18533b3791ddcd8dbe407550c5809428a10f2a3" [label="mkdir{path=/go}" shape="note"];
  "sha256:c4f067f88cec04e3a4a5e91a0fcc7e5f4d2c6dd8ef45beebb0f9b0fd46339c17" [label="sha256:c4f067f88cec04e3a4a5e91a0fcc7e5f4d2c6dd8ef45beebb0f9b0fd46339c17" shape="plaintext"];
  "sha256:d6484676aedfa73bc24e551fd849cb7d682c179c153d7095b8caaa5102e8d775" -> "sha256:b4dd2ed46e64a89074364914fe410b3cd8e3c90c703ef8d0231bf6e786d45467" [label=""];
  "sha256:b4dd2ed46e64a89074364914fe410b3cd8e3c90c703ef8d0231bf6e786d45467" -> "sha256:16d18564ff9c30280bd5f961be7ba7e8827b5170a321afa932693d05301cebb5" [label=""];
  "sha256:16d18564ff9c30280bd5f961be7ba7e8827b5170a321afa932693d05301cebb5" -> "sha256:1f6877b6e854e5464394089c59fe6fcc20f8899bda683833506bfb7f7ebe82dc" [label=""];
  "sha256:1f6877b6e854e5464394089c59fe6fcc20f8899bda683833506bfb7f7ebe82dc" -> "sha256:7207038237fca6f090bbcff0a18533b3791ddcd8dbe407550c5809428a10f2a3" [label=""];
  "sha256:7207038237fca6f090bbcff0a18533b3791ddcd8dbe407550c5809428a10f2a3" -> "sha256:c4f067f88cec04e3a4a5e91a0fcc7e5f4d2c6dd8ef45beebb0f9b0fd46339c17" [label=""];
}

