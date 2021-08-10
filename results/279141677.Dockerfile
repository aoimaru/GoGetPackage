[app/sources/279141677.Dockerfile]
digraph {
  "sha256:41d64b45ac88ec4df4c503946d6744433ff9e2179d15c46678c79cbf5f704221" [label="docker-image://docker.io/archlinux/base:latest" shape="ellipse"];
  "sha256:882f9e0f4d9dcc85f67b949bb32f6e4ab8d2a5696e7b0de5843837420161d843" [label="local://context" shape="ellipse"];
  "sha256:364d482dfd133f8d969422951c41ea9c8ae670d4eb0deddb7c0e54400112c277" [label="copy{src=/neo, dest=/root/neo}" shape="note"];
  "sha256:d0040b458ea0d749c38378e652407b8c0870a2d5b6c4e80ae4075308b33606b4" [label="copy{src=/scripts/prepare-arch-aur-gcc-8.sh, dest=/root}" shape="note"];
  "sha256:70f6d142f5f2c4663a6db2f0e58e6e1b99b55d81dabba83b77df98157da167ce" [label="copy{src=/scripts/build-arch-dep.sh, dest=/root}" shape="note"];
  "sha256:45e0ee5143cc67736dd86c3fc1c4186ae17a7f8398e1eaaa1ec481883347ae35" [label="/bin/sh -c /root/prepare-arch-aur-gcc-8.sh" shape="box"];
  "sha256:e16ac462d3bfe9a715e7839264d656e0a671d857024f6f0cbb28ed192a70653a" [label="/bin/sh -c cd /root/build ; cmake -G Ninja -DCMAKE_BUILD_TYPE=Release     -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ ../neo ;     ninja -j `nproc`" shape="box"];
  "sha256:f14b943a35e5b5e8b6dbb15e0744cf047a7d17c0024e0e5b9be89a9941663d44" [label="sha256:f14b943a35e5b5e8b6dbb15e0744cf047a7d17c0024e0e5b9be89a9941663d44" shape="plaintext"];
  "sha256:41d64b45ac88ec4df4c503946d6744433ff9e2179d15c46678c79cbf5f704221" -> "sha256:364d482dfd133f8d969422951c41ea9c8ae670d4eb0deddb7c0e54400112c277" [label=""];
  "sha256:882f9e0f4d9dcc85f67b949bb32f6e4ab8d2a5696e7b0de5843837420161d843" -> "sha256:364d482dfd133f8d969422951c41ea9c8ae670d4eb0deddb7c0e54400112c277" [label=""];
  "sha256:364d482dfd133f8d969422951c41ea9c8ae670d4eb0deddb7c0e54400112c277" -> "sha256:d0040b458ea0d749c38378e652407b8c0870a2d5b6c4e80ae4075308b33606b4" [label=""];
  "sha256:882f9e0f4d9dcc85f67b949bb32f6e4ab8d2a5696e7b0de5843837420161d843" -> "sha256:d0040b458ea0d749c38378e652407b8c0870a2d5b6c4e80ae4075308b33606b4" [label=""];
  "sha256:d0040b458ea0d749c38378e652407b8c0870a2d5b6c4e80ae4075308b33606b4" -> "sha256:70f6d142f5f2c4663a6db2f0e58e6e1b99b55d81dabba83b77df98157da167ce" [label=""];
  "sha256:882f9e0f4d9dcc85f67b949bb32f6e4ab8d2a5696e7b0de5843837420161d843" -> "sha256:70f6d142f5f2c4663a6db2f0e58e6e1b99b55d81dabba83b77df98157da167ce" [label=""];
  "sha256:70f6d142f5f2c4663a6db2f0e58e6e1b99b55d81dabba83b77df98157da167ce" -> "sha256:45e0ee5143cc67736dd86c3fc1c4186ae17a7f8398e1eaaa1ec481883347ae35" [label=""];
  "sha256:45e0ee5143cc67736dd86c3fc1c4186ae17a7f8398e1eaaa1ec481883347ae35" -> "sha256:e16ac462d3bfe9a715e7839264d656e0a671d857024f6f0cbb28ed192a70653a" [label=""];
  "sha256:e16ac462d3bfe9a715e7839264d656e0a671d857024f6f0cbb28ed192a70653a" -> "sha256:f14b943a35e5b5e8b6dbb15e0744cf047a7d17c0024e0e5b9be89a9941663d44" [label=""];
}

