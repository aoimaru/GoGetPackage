[app/sources/165772577.Dockerfile]
digraph {
  "sha256:4cb6ee2b8113cd87afd4b2ba784a1780b4b81c96f0bbde77a6ddff43729f418b" [label="docker-image://docker.io/library/debian:buster-slim" shape="ellipse"];
  "sha256:c01b2ae80c9bfe0fb0e262c88508158b1ed05b5d51e4ea4587558fba0fe83976" [label="/bin/sh -c apt-get update && apt-get install -y \tdosfstools \tgparted \tlibcanberra-gtk-module \tprocps \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:848e27d912bf3054c72a506009d6e1f2a3477c5410596fa43654d70be2612e2d" [label="sha256:848e27d912bf3054c72a506009d6e1f2a3477c5410596fa43654d70be2612e2d" shape="plaintext"];
  "sha256:4cb6ee2b8113cd87afd4b2ba784a1780b4b81c96f0bbde77a6ddff43729f418b" -> "sha256:c01b2ae80c9bfe0fb0e262c88508158b1ed05b5d51e4ea4587558fba0fe83976" [label=""];
  "sha256:c01b2ae80c9bfe0fb0e262c88508158b1ed05b5d51e4ea4587558fba0fe83976" -> "sha256:848e27d912bf3054c72a506009d6e1f2a3477c5410596fa43654d70be2612e2d" [label=""];
}

