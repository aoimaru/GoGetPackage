[app/sources/415060780.Dockerfile]
digraph {
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" [label="docker-image://docker.io/library/fedora:24" shape="ellipse"];
  "sha256:9e23d4189749fd14b5dbbbdef1a32d3f4a0756595d13b7233dbedd2048feacc9" [label="/bin/sh -c dnf -y install @development-tools fedora-packager rpmdevtools" shape="box"];
  "sha256:3e13a89eb54baec6ad3a3c5e7d6ca11765296847183daad8209f19a447ca25fe" [label="/bin/sh -c dnf -y install zip unzip git gcc-c++ automake autoconf" shape="box"];
  "sha256:2ee03bcd63bbd68624aeb1134f40e897fd0c7b09d7af1084eba6bc53403f256f" [label="/bin/sh -c dnf -y install mesa-libGLU-devel alsa-lib-devel libpng12-devel libjpeg-turbo-devel gettext-devel" shape="box"];
  "sha256:16e25eab76e76478c6e4c04fb03a69e81ddbb24203d38eec4127333066967e02" [label="/bin/sh -c dnf -y install libXrandr-devel libusb-devel libvorbis-devel libogg-devel gtk2-devel lua-devel" shape="box"];
  "sha256:3e3e28d7e030be100e0c7a00347bd68e4f021e2e7218de3567b73564c99e05b2" [label="sha256:3e3e28d7e030be100e0c7a00347bd68e4f021e2e7218de3567b73564c99e05b2" shape="plaintext"];
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" -> "sha256:9e23d4189749fd14b5dbbbdef1a32d3f4a0756595d13b7233dbedd2048feacc9" [label=""];
  "sha256:9e23d4189749fd14b5dbbbdef1a32d3f4a0756595d13b7233dbedd2048feacc9" -> "sha256:3e13a89eb54baec6ad3a3c5e7d6ca11765296847183daad8209f19a447ca25fe" [label=""];
  "sha256:3e13a89eb54baec6ad3a3c5e7d6ca11765296847183daad8209f19a447ca25fe" -> "sha256:2ee03bcd63bbd68624aeb1134f40e897fd0c7b09d7af1084eba6bc53403f256f" [label=""];
  "sha256:2ee03bcd63bbd68624aeb1134f40e897fd0c7b09d7af1084eba6bc53403f256f" -> "sha256:16e25eab76e76478c6e4c04fb03a69e81ddbb24203d38eec4127333066967e02" [label=""];
  "sha256:16e25eab76e76478c6e4c04fb03a69e81ddbb24203d38eec4127333066967e02" -> "sha256:3e3e28d7e030be100e0c7a00347bd68e4f021e2e7218de3567b73564c99e05b2" [label=""];
}

