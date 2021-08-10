[app/sources/252773915.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:da559964bf5559fa616a6856cc0856dd0346d2b74e0c3edb11691f961362a3c5" [label="local://context" shape="ellipse"];
  "sha256:ea8b65648468dde723edba432902c4fddd86ecda2c75b4a64f1f456abe09cd10" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:cf338ba611e0b036a7b7a3fac56133b78e6cce112fdf7c66354a8717d7eabb7a" [label="/bin/sh -c /bin/sh /scripts/build.sh" shape="box"];
  "sha256:7e0ccd5d698807acd29fde7aa91a8834e4a4f5e05c1ced09f3eaf04588980817" [label="sha256:7e0ccd5d698807acd29fde7aa91a8834e4a4f5e05c1ced09f3eaf04588980817" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:ea8b65648468dde723edba432902c4fddd86ecda2c75b4a64f1f456abe09cd10" [label=""];
  "sha256:da559964bf5559fa616a6856cc0856dd0346d2b74e0c3edb11691f961362a3c5" -> "sha256:ea8b65648468dde723edba432902c4fddd86ecda2c75b4a64f1f456abe09cd10" [label=""];
  "sha256:ea8b65648468dde723edba432902c4fddd86ecda2c75b4a64f1f456abe09cd10" -> "sha256:cf338ba611e0b036a7b7a3fac56133b78e6cce112fdf7c66354a8717d7eabb7a" [label=""];
  "sha256:cf338ba611e0b036a7b7a3fac56133b78e6cce112fdf7c66354a8717d7eabb7a" -> "sha256:7e0ccd5d698807acd29fde7aa91a8834e4a4f5e05c1ced09f3eaf04588980817" [label=""];
}

