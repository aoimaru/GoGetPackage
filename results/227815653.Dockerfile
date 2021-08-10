[app/sources/227815653.Dockerfile]
digraph {
  "sha256:817c7dcf136c19fe5197d05b4c9142664f391949a7b046428dde9391db991ad1" [label="local://context" shape="ellipse"];
  "sha256:246d41100589378e2957c962853c88cdcfb9f16ded2c1bce4fc3f892bc6abc7b" [label="docker-image://docker.io/chriz2600/quartus-lite:latest" shape="ellipse"];
  "sha256:cfb35f7f8a9dbfb14ef0805a63b3900a151a22a601f25c25b85d1edac20fcd9d" [label="/bin/sh -c apt-get update && apt-get install -y curl make gcc" shape="box"];
  "sha256:a728f00533c88bcaeb74ba4daff7bb189f9720c2be717bc8f803a4ae4ef38bcd" [label="copy{src=/files/51-usbblaster.rules, dest=/etc/udev/rules.d/51-usbblaster.rules}" shape="note"];
  "sha256:cf53a02ad0a2d7e5a87e04fcb7fd81f5621c296edbfcbfe0b0cf08df2fb926a5" [label="/bin/sh -c mkdir -p /srv && cd /root && git clone --recurse-submodules https://github.com/chriz2600/DreamcastHDMI.git" shape="box"];
  "sha256:2a61d768c11ff80187323383b056b46fbfb4ceef2fbaee4f96ddddec982d3221" [label="copy{src=/files/build, dest=/root/build}" shape="note"];
  "sha256:5e38988e032b7c5a47e01ea4bc9cdde533888fb8b6ba95171e771a121c3229ed" [label="copy{src=/files/build.projects, dest=/root/build.projects}" shape="note"];
  "sha256:509005788f52d0b2443bdbd99272c1e0a6518524f28119f490c147e9a2091555" [label="copy{src=/files/program, dest=/root/program}" shape="note"];
  "sha256:bfab7d01b9b8d3b04a973579eea7cefb6884b748c8d74c236e7dafd062e724e9" [label="copy{src=/files/firmware-packer, dest=/root/firmware-packer}" shape="note"];
  "sha256:ccebf7e351ad50d0d13d1563f58f29976e87643aace550ada9545986d0547256" [label="copy{src=/files/firmware-unpacker, dest=/root/firmware-unpacker}" shape="note"];
  "sha256:dba915cb322223b2702c717e71bfd0d88f3ebb8855ed803f3916c1f59757f064" [label="sha256:dba915cb322223b2702c717e71bfd0d88f3ebb8855ed803f3916c1f59757f064" shape="plaintext"];
  "sha256:246d41100589378e2957c962853c88cdcfb9f16ded2c1bce4fc3f892bc6abc7b" -> "sha256:cfb35f7f8a9dbfb14ef0805a63b3900a151a22a601f25c25b85d1edac20fcd9d" [label=""];
  "sha256:cfb35f7f8a9dbfb14ef0805a63b3900a151a22a601f25c25b85d1edac20fcd9d" -> "sha256:a728f00533c88bcaeb74ba4daff7bb189f9720c2be717bc8f803a4ae4ef38bcd" [label=""];
  "sha256:817c7dcf136c19fe5197d05b4c9142664f391949a7b046428dde9391db991ad1" -> "sha256:a728f00533c88bcaeb74ba4daff7bb189f9720c2be717bc8f803a4ae4ef38bcd" [label=""];
  "sha256:a728f00533c88bcaeb74ba4daff7bb189f9720c2be717bc8f803a4ae4ef38bcd" -> "sha256:cf53a02ad0a2d7e5a87e04fcb7fd81f5621c296edbfcbfe0b0cf08df2fb926a5" [label=""];
  "sha256:cf53a02ad0a2d7e5a87e04fcb7fd81f5621c296edbfcbfe0b0cf08df2fb926a5" -> "sha256:2a61d768c11ff80187323383b056b46fbfb4ceef2fbaee4f96ddddec982d3221" [label=""];
  "sha256:817c7dcf136c19fe5197d05b4c9142664f391949a7b046428dde9391db991ad1" -> "sha256:2a61d768c11ff80187323383b056b46fbfb4ceef2fbaee4f96ddddec982d3221" [label=""];
  "sha256:2a61d768c11ff80187323383b056b46fbfb4ceef2fbaee4f96ddddec982d3221" -> "sha256:5e38988e032b7c5a47e01ea4bc9cdde533888fb8b6ba95171e771a121c3229ed" [label=""];
  "sha256:817c7dcf136c19fe5197d05b4c9142664f391949a7b046428dde9391db991ad1" -> "sha256:5e38988e032b7c5a47e01ea4bc9cdde533888fb8b6ba95171e771a121c3229ed" [label=""];
  "sha256:5e38988e032b7c5a47e01ea4bc9cdde533888fb8b6ba95171e771a121c3229ed" -> "sha256:509005788f52d0b2443bdbd99272c1e0a6518524f28119f490c147e9a2091555" [label=""];
  "sha256:817c7dcf136c19fe5197d05b4c9142664f391949a7b046428dde9391db991ad1" -> "sha256:509005788f52d0b2443bdbd99272c1e0a6518524f28119f490c147e9a2091555" [label=""];
  "sha256:509005788f52d0b2443bdbd99272c1e0a6518524f28119f490c147e9a2091555" -> "sha256:bfab7d01b9b8d3b04a973579eea7cefb6884b748c8d74c236e7dafd062e724e9" [label=""];
  "sha256:817c7dcf136c19fe5197d05b4c9142664f391949a7b046428dde9391db991ad1" -> "sha256:bfab7d01b9b8d3b04a973579eea7cefb6884b748c8d74c236e7dafd062e724e9" [label=""];
  "sha256:bfab7d01b9b8d3b04a973579eea7cefb6884b748c8d74c236e7dafd062e724e9" -> "sha256:ccebf7e351ad50d0d13d1563f58f29976e87643aace550ada9545986d0547256" [label=""];
  "sha256:817c7dcf136c19fe5197d05b4c9142664f391949a7b046428dde9391db991ad1" -> "sha256:ccebf7e351ad50d0d13d1563f58f29976e87643aace550ada9545986d0547256" [label=""];
  "sha256:ccebf7e351ad50d0d13d1563f58f29976e87643aace550ada9545986d0547256" -> "sha256:dba915cb322223b2702c717e71bfd0d88f3ebb8855ed803f3916c1f59757f064" [label=""];
}

