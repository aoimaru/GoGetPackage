[app/sources/368114990.Dockerfile]
digraph {
  "sha256:5850f281531d77c4be8db219b8f6b5d9573470c6c3814e4c5b8ba92856e32c20" [label="local://context" shape="ellipse"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:df3e0149975ef8667f24f003a36d39709caeaf021536154ac0a7ae2ffab8d72a" [label="/bin/sh -c apk --no-cache --update add         clang         clang-dev         gcc         gdb         gmp-dev         gtk+3.0-dev         iproute2         libmnl-dev         linux-grsec-dev         linux-headers         llvm-dev         make         musl-dev         musl-utils         openjdk8         openssh         python-dev         python3-dev         sdl2-dev &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:988f72cb6efab80704e760df33bc51caacda1259388a4200f7e3cf9631486681" [label="mkdir{path=/shared}" shape="note"];
  "sha256:5ac0dbeb3aa9122c3a6af901599be85759ee991df4bfab82bd1f64eb7ea439d5" [label="/bin/sh -c ln -s shared/machines/run_shared_test.sh /run_shared_test.sh" shape="box"];
  "sha256:31879c138111132e1330fdb75f1055a0afcaac294e899ee8a7e9d5285892d792" [label="copy{src=/, dest=/shared/}" shape="note"];
  "sha256:837bac068e1a8e10aef3f834579bd5e679c2d869ae4a7133f92a54c944e51329" [label="sha256:837bac068e1a8e10aef3f834579bd5e679c2d869ae4a7133f92a54c944e51329" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:df3e0149975ef8667f24f003a36d39709caeaf021536154ac0a7ae2ffab8d72a" [label=""];
  "sha256:df3e0149975ef8667f24f003a36d39709caeaf021536154ac0a7ae2ffab8d72a" -> "sha256:988f72cb6efab80704e760df33bc51caacda1259388a4200f7e3cf9631486681" [label=""];
  "sha256:988f72cb6efab80704e760df33bc51caacda1259388a4200f7e3cf9631486681" -> "sha256:5ac0dbeb3aa9122c3a6af901599be85759ee991df4bfab82bd1f64eb7ea439d5" [label=""];
  "sha256:5ac0dbeb3aa9122c3a6af901599be85759ee991df4bfab82bd1f64eb7ea439d5" -> "sha256:31879c138111132e1330fdb75f1055a0afcaac294e899ee8a7e9d5285892d792" [label=""];
  "sha256:5850f281531d77c4be8db219b8f6b5d9573470c6c3814e4c5b8ba92856e32c20" -> "sha256:31879c138111132e1330fdb75f1055a0afcaac294e899ee8a7e9d5285892d792" [label=""];
  "sha256:31879c138111132e1330fdb75f1055a0afcaac294e899ee8a7e9d5285892d792" -> "sha256:837bac068e1a8e10aef3f834579bd5e679c2d869ae4a7133f92a54c944e51329" [label=""];
}

