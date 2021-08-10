[app/sources/178775813.Dockerfile]
digraph {
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" [label="docker-image://docker.io/imiell/sd_shutit:latest" shape="ellipse"];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label="mkdir{path=/opt}" shape="note"];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label="/bin/sh -c git clone https://github.com/ianmiell/shutit-distro.git" shape="box"];
  "sha256:c3fe1136286436ffba0cae35a88dbf040485b37343bbd1b9f87c6350052b3229" [label="mkdir{path=/opt/shutit-distro/curl}" shape="note"];
  "sha256:484b27ad3cc0a7fdf5749bab388c6bead33c842026d228b319263acfc08530d0" [label="/bin/sh -c /opt/shutit/shutit build --shutit_module_path .. --delivery bash" shape="box"];
  "sha256:27b0be87d9344cc6ff5d686e73bce67d01a1f1bd3b1a77376e8b0af2f566afb0" [label="sha256:27b0be87d9344cc6ff5d686e73bce67d01a1f1bd3b1a77376e8b0af2f566afb0" shape="plaintext"];
  "sha256:c87ec59635d50ef7064397225acdda392bdfa01234887506ccd126548dabde0f" -> "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" [label=""];
  "sha256:34b308f3c3057fd167507520454c0cb7edc863ea44b92f762c1b6b2504944310" -> "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" [label=""];
  "sha256:f724b366ed0461ce63c07adda6ae5741526beb76d4617f61e3df2e77630b27dd" -> "sha256:c3fe1136286436ffba0cae35a88dbf040485b37343bbd1b9f87c6350052b3229" [label=""];
  "sha256:c3fe1136286436ffba0cae35a88dbf040485b37343bbd1b9f87c6350052b3229" -> "sha256:484b27ad3cc0a7fdf5749bab388c6bead33c842026d228b319263acfc08530d0" [label=""];
  "sha256:484b27ad3cc0a7fdf5749bab388c6bead33c842026d228b319263acfc08530d0" -> "sha256:27b0be87d9344cc6ff5d686e73bce67d01a1f1bd3b1a77376e8b0af2f566afb0" [label=""];
}

