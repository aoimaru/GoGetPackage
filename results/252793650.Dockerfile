[app/sources/252793650.Dockerfile]
digraph {
  "sha256:eecc12e437db1d1cccd6e32aa14ee0b3dadf5ad624aba77a00440033d24f2aae" [label="docker-image://docker.io/daprlabs/archlinux:latest" shape="ellipse"];
  "sha256:cebdc941d7ca7f24d7742bcc9817a2191ffec09086ce72047edf10e7f36d5494" [label="/bin/sh -c yaourt --noconfirm -Syy jdk; pacman -Scc" shape="box"];
  "sha256:938cf122c8ffade9e7e5b8093ad0e061f9a1eca4cc0b474dc6447a5cb6320d0a" [label="sha256:938cf122c8ffade9e7e5b8093ad0e061f9a1eca4cc0b474dc6447a5cb6320d0a" shape="plaintext"];
  "sha256:eecc12e437db1d1cccd6e32aa14ee0b3dadf5ad624aba77a00440033d24f2aae" -> "sha256:cebdc941d7ca7f24d7742bcc9817a2191ffec09086ce72047edf10e7f36d5494" [label=""];
  "sha256:cebdc941d7ca7f24d7742bcc9817a2191ffec09086ce72047edf10e7f36d5494" -> "sha256:938cf122c8ffade9e7e5b8093ad0e061f9a1eca4cc0b474dc6447a5cb6320d0a" [label=""];
}

