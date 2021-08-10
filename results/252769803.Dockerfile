[app/sources/252769803.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:b01eb899e8c9ab2f60fddb319ff3eb95365cc8a51b32e6a839d7bdd8d559f63f" [label="/bin/sh -c apk add --no-cache bash transmission-daemon" shape="box"];
  "sha256:803035b4b6ab938cd2644e49b05074027da317060da831954baaffe14edc8984" [label="local://context" shape="ellipse"];
  "sha256:fa5cf38b3d175bef1c78973ddd401260b5203cd65695466dc446aa64ad99610a" [label="copy{src=/asset/settings.json, dest=/tmp/settings.json}" shape="note"];
  "sha256:dceac98be108ad007e29f8e9ba2df6bfba8039ac7871db86b769a33e831969b0" [label="copy{src=/entrypoint.sh, dest=/opt/entrypoint.sh}" shape="note"];
  "sha256:f4308f61af0ebcd4b496ab2ffd319bad9bb2d6da89a6ee2ad7f895c6ac864fa1" [label="sha256:f4308f61af0ebcd4b496ab2ffd319bad9bb2d6da89a6ee2ad7f895c6ac864fa1" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:b01eb899e8c9ab2f60fddb319ff3eb95365cc8a51b32e6a839d7bdd8d559f63f" [label=""];
  "sha256:b01eb899e8c9ab2f60fddb319ff3eb95365cc8a51b32e6a839d7bdd8d559f63f" -> "sha256:fa5cf38b3d175bef1c78973ddd401260b5203cd65695466dc446aa64ad99610a" [label=""];
  "sha256:803035b4b6ab938cd2644e49b05074027da317060da831954baaffe14edc8984" -> "sha256:fa5cf38b3d175bef1c78973ddd401260b5203cd65695466dc446aa64ad99610a" [label=""];
  "sha256:fa5cf38b3d175bef1c78973ddd401260b5203cd65695466dc446aa64ad99610a" -> "sha256:dceac98be108ad007e29f8e9ba2df6bfba8039ac7871db86b769a33e831969b0" [label=""];
  "sha256:803035b4b6ab938cd2644e49b05074027da317060da831954baaffe14edc8984" -> "sha256:dceac98be108ad007e29f8e9ba2df6bfba8039ac7871db86b769a33e831969b0" [label=""];
  "sha256:dceac98be108ad007e29f8e9ba2df6bfba8039ac7871db86b769a33e831969b0" -> "sha256:f4308f61af0ebcd4b496ab2ffd319bad9bb2d6da89a6ee2ad7f895c6ac864fa1" [label=""];
}

