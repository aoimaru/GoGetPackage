[app/sources/200667734.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:74a24cc06da3a1ee3461c1fd5e548627518c4800f669e4ed4be4a4e2bacbb91f" [label="local://context" shape="ellipse"];
  "sha256:7ab4bcd62bbc246e5213f7b0a21a7ada17d9aceae5a11636f3c6431a89296673" [label="copy{src=/rootfs.tar.gz, dest=/}" shape="note"];
  "sha256:1cac01b50241a5af4581c7a7f4c459b75edea8a3153df34c27e3bb7680e5516f" [label="sha256:1cac01b50241a5af4581c7a7f4c459b75edea8a3153df34c27e3bb7680e5516f" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:7ab4bcd62bbc246e5213f7b0a21a7ada17d9aceae5a11636f3c6431a89296673" [label=""];
  "sha256:74a24cc06da3a1ee3461c1fd5e548627518c4800f669e4ed4be4a4e2bacbb91f" -> "sha256:7ab4bcd62bbc246e5213f7b0a21a7ada17d9aceae5a11636f3c6431a89296673" [label=""];
  "sha256:7ab4bcd62bbc246e5213f7b0a21a7ada17d9aceae5a11636f3c6431a89296673" -> "sha256:1cac01b50241a5af4581c7a7f4c459b75edea8a3153df34c27e3bb7680e5516f" [label=""];
}

