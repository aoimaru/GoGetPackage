[app/sources/311621255.Dockerfile]
digraph {
  "sha256:64252d43908dd00d035ab7cab200bb9a558a1f104c5cb51cdf7fedbb95ce16d6" [label="docker-image://docker.io/hypriot/image-builder:latest" shape="ellipse"];
  "sha256:fabed4e625188b72ab0cc64ddcecde8b0be1a32928391c69c204e7d696356f4a" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y     binfmt-support     qemu     qemu-user-static     --no-install-recommends &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c587cc2463344ba36977db986005f299b416fee373dd9537080a9aae3ba81a60" [label="local://context" shape="ellipse"];
  "sha256:f7d43b5652b0706e8cae855d62980faa000e65c62fd8764037b7db812c6b8280" [label="copy{src=/builder, dest=/builder/}" shape="note"];
  "sha256:61ec52313f0e4381eff33d177d3c19fc4d710577b20139f605355fa41071df31" [label="sha256:61ec52313f0e4381eff33d177d3c19fc4d710577b20139f605355fa41071df31" shape="plaintext"];
  "sha256:64252d43908dd00d035ab7cab200bb9a558a1f104c5cb51cdf7fedbb95ce16d6" -> "sha256:fabed4e625188b72ab0cc64ddcecde8b0be1a32928391c69c204e7d696356f4a" [label=""];
  "sha256:fabed4e625188b72ab0cc64ddcecde8b0be1a32928391c69c204e7d696356f4a" -> "sha256:f7d43b5652b0706e8cae855d62980faa000e65c62fd8764037b7db812c6b8280" [label=""];
  "sha256:c587cc2463344ba36977db986005f299b416fee373dd9537080a9aae3ba81a60" -> "sha256:f7d43b5652b0706e8cae855d62980faa000e65c62fd8764037b7db812c6b8280" [label=""];
  "sha256:f7d43b5652b0706e8cae855d62980faa000e65c62fd8764037b7db812c6b8280" -> "sha256:61ec52313f0e4381eff33d177d3c19fc4d710577b20139f605355fa41071df31" [label=""];
}

