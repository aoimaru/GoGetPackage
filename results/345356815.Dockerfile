[app/sources/345356815.Dockerfile]
digraph {
  "sha256:54dc7919b40393c5b9de02ffd671be3d072d430626914a6c2808ab92f636648b" [label="docker-image://docker.io/balenalib/aarch64-debian:stretch-build" shape="ellipse"];
  "sha256:a655d29b4673876659c14e55ca6379a40478bc11ff8676e3c039bb44d7262a3e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1f242f41fbd383104edc1ffc0482827c52f907c1846d5d30f762bb9f4ab0759b" [label="sha256:1f242f41fbd383104edc1ffc0482827c52f907c1846d5d30f762bb9f4ab0759b" shape="plaintext"];
  "sha256:54dc7919b40393c5b9de02ffd671be3d072d430626914a6c2808ab92f636648b" -> "sha256:a655d29b4673876659c14e55ca6379a40478bc11ff8676e3c039bb44d7262a3e" [label=""];
  "sha256:a655d29b4673876659c14e55ca6379a40478bc11ff8676e3c039bb44d7262a3e" -> "sha256:1f242f41fbd383104edc1ffc0482827c52f907c1846d5d30f762bb9f4ab0759b" [label=""];
}

