[app/sources/320100380.Dockerfile]
digraph {
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" [label="docker-image://docker.io/library/debian:sid" shape="ellipse"];
  "sha256:bd129062734b36dab39b0938d7b1782948915707730079a6e5d7c61dd294bde6" [label="/bin/sh -c apt-get update && apt-get install -y \tlibgl1-mesa-dri \tlibgl1-mesa-glx \tvirt-viewer \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0df27119ada0149f7c356c476c8c180a99e053a42107ec98f197a0da83930691" [label="sha256:0df27119ada0149f7c356c476c8c180a99e053a42107ec98f197a0da83930691" shape="plaintext"];
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" -> "sha256:bd129062734b36dab39b0938d7b1782948915707730079a6e5d7c61dd294bde6" [label=""];
  "sha256:bd129062734b36dab39b0938d7b1782948915707730079a6e5d7c61dd294bde6" -> "sha256:0df27119ada0149f7c356c476c8c180a99e053a42107ec98f197a0da83930691" [label=""];
}

