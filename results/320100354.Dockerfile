[app/sources/320100354.Dockerfile]
digraph {
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" [label="docker-image://docker.io/library/debian:buster" shape="ellipse"];
  "sha256:9533db57a1095c2b02efca7d487a38addb766d389fee35986a6e9dde3d0b1d1c" [label="/bin/sh -c apt-get update && apt-get install -y     texlive-full     biber     --no-install-recommends     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b29a394d5dcac62ee7cb3e69b56bf5762707f0d5b5aba643675ae972b59fe660" [label="sha256:b29a394d5dcac62ee7cb3e69b56bf5762707f0d5b5aba643675ae972b59fe660" shape="plaintext"];
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" -> "sha256:9533db57a1095c2b02efca7d487a38addb766d389fee35986a6e9dde3d0b1d1c" [label=""];
  "sha256:9533db57a1095c2b02efca7d487a38addb766d389fee35986a6e9dde3d0b1d1c" -> "sha256:b29a394d5dcac62ee7cb3e69b56bf5762707f0d5b5aba643675ae972b59fe660" [label=""];
}

