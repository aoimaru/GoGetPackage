[app/sources/337369959.Dockerfile]
digraph {
  "sha256:ec48b0808c5bdb198ba22406034695775ef9c31c2ad10716bd34587c8a838f40" [label="docker-image://docker.io/sebp/elk:651" shape="ellipse"];
  "sha256:fa0d88063426d30ac7e0f0577d490f9b7e2d712b06261b6857a767b808d4f75c" [label="mkdir{path=/opt/elasticsearch}" shape="note"];
  "sha256:1bf73bf736a5f9351955482726ea0d55a8966f24bc38bc070d66b9562fcde7d7" [label="/bin/sh -c yes | CONF_DIR=/etc/elasticsearch gosu elasticsearch bin/elasticsearch-plugin             install ingest-geoip" shape="box"];
  "sha256:01af0065c105ee5fca7b000bc05ecdf17d0c02c3495ccf6a6bb16ff0fa14f6cb" [label="sha256:01af0065c105ee5fca7b000bc05ecdf17d0c02c3495ccf6a6bb16ff0fa14f6cb" shape="plaintext"];
  "sha256:ec48b0808c5bdb198ba22406034695775ef9c31c2ad10716bd34587c8a838f40" -> "sha256:fa0d88063426d30ac7e0f0577d490f9b7e2d712b06261b6857a767b808d4f75c" [label=""];
  "sha256:fa0d88063426d30ac7e0f0577d490f9b7e2d712b06261b6857a767b808d4f75c" -> "sha256:1bf73bf736a5f9351955482726ea0d55a8966f24bc38bc070d66b9562fcde7d7" [label=""];
  "sha256:1bf73bf736a5f9351955482726ea0d55a8966f24bc38bc070d66b9562fcde7d7" -> "sha256:01af0065c105ee5fca7b000bc05ecdf17d0c02c3495ccf6a6bb16ff0fa14f6cb" [label=""];
}

