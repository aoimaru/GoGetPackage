[app/sources/252797058.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:05bca8662a60ffb935d2376bd141f3437857be21f182b47a13a948010e4b15d9" [label="/bin/sh -c export DEBIAN_FRONTEND='noninteractive' && apt-get update && apt-get install -y screen wget btrfs-tools rsync binutils gcc" shape="box"];
  "sha256:b4ac6a65154e9c6a85525b8263e989c53614602e2d5609dc4903ecbe4dd8223d" [label="local://context" shape="ellipse"];
  "sha256:b8d1d3499e9de75deaeabc577ba3ec5d4b8f25241b4d4b54f73e5fa467301b8e" [label="copy{src=/, dest=/opt/cloudfleet/apps/parachute}" shape="note"];
  "sha256:1184f441c01d8cad154571ba8c03b7cbe9c771ab433e582c1dcbde66f1a7105e" [label="mkdir{path=/opt/cloudfleet/apps/parachute}" shape="note"];
  "sha256:f85a05e743131ff47bec9f12d19d1e11bb29278b30e09483209885a60daa58a3" [label="/bin/sh -c setup/install-parachute.bash" shape="box"];
  "sha256:c8dde5c1f930f42a1359513dc03e6b51125b159eb24d748b33d7443550a8d62f" [label="sha256:c8dde5c1f930f42a1359513dc03e6b51125b159eb24d748b33d7443550a8d62f" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:05bca8662a60ffb935d2376bd141f3437857be21f182b47a13a948010e4b15d9" [label=""];
  "sha256:05bca8662a60ffb935d2376bd141f3437857be21f182b47a13a948010e4b15d9" -> "sha256:b8d1d3499e9de75deaeabc577ba3ec5d4b8f25241b4d4b54f73e5fa467301b8e" [label=""];
  "sha256:b4ac6a65154e9c6a85525b8263e989c53614602e2d5609dc4903ecbe4dd8223d" -> "sha256:b8d1d3499e9de75deaeabc577ba3ec5d4b8f25241b4d4b54f73e5fa467301b8e" [label=""];
  "sha256:b8d1d3499e9de75deaeabc577ba3ec5d4b8f25241b4d4b54f73e5fa467301b8e" -> "sha256:1184f441c01d8cad154571ba8c03b7cbe9c771ab433e582c1dcbde66f1a7105e" [label=""];
  "sha256:1184f441c01d8cad154571ba8c03b7cbe9c771ab433e582c1dcbde66f1a7105e" -> "sha256:f85a05e743131ff47bec9f12d19d1e11bb29278b30e09483209885a60daa58a3" [label=""];
  "sha256:f85a05e743131ff47bec9f12d19d1e11bb29278b30e09483209885a60daa58a3" -> "sha256:c8dde5c1f930f42a1359513dc03e6b51125b159eb24d748b33d7443550a8d62f" [label=""];
}

