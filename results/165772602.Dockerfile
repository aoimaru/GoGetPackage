[app/sources/165772602.Dockerfile]
digraph {
  "sha256:feb570cdc97b3f4601fc006e5df669e01ba38f0fd27298bdcc81f19387a9fc6c" [label="docker-image://docker.io/library/debian:sid-slim" shape="ellipse"];
  "sha256:0f714c68cb938f388b0667c45fa38bb546592c4c4d0a6dd518a77fab282fdf7b" [label="/bin/sh -c apt-get update && apt-get install -y \tiptables \tlibgl1-mesa-dri \tlibgl1-mesa-glx \tlibvirt-daemon-system \tpython-gi \tpython-ipaddr \tqemu-kvm \tvirtinst \tvirt-viewer \t--no-install-recommends \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:252dfc1f8e639666a965c9209683c47172d518fe01be8509a492789b530a6a67" [label="local://context" shape="ellipse"];
  "sha256:0d1be86067dca586a5c4172dd82a48c0c4cfed70211ee6c627d2e82c622f6f75" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:af86f781661790ac7cbac62e367a65a889258bb64f73359de72bd33378357b13" [label="sha256:af86f781661790ac7cbac62e367a65a889258bb64f73359de72bd33378357b13" shape="plaintext"];
  "sha256:feb570cdc97b3f4601fc006e5df669e01ba38f0fd27298bdcc81f19387a9fc6c" -> "sha256:0f714c68cb938f388b0667c45fa38bb546592c4c4d0a6dd518a77fab282fdf7b" [label=""];
  "sha256:0f714c68cb938f388b0667c45fa38bb546592c4c4d0a6dd518a77fab282fdf7b" -> "sha256:0d1be86067dca586a5c4172dd82a48c0c4cfed70211ee6c627d2e82c622f6f75" [label=""];
  "sha256:252dfc1f8e639666a965c9209683c47172d518fe01be8509a492789b530a6a67" -> "sha256:0d1be86067dca586a5c4172dd82a48c0c4cfed70211ee6c627d2e82c622f6f75" [label=""];
  "sha256:0d1be86067dca586a5c4172dd82a48c0c4cfed70211ee6c627d2e82c622f6f75" -> "sha256:af86f781661790ac7cbac62e367a65a889258bb64f73359de72bd33378357b13" [label=""];
}

