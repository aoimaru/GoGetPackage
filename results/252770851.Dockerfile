[app/sources/252770851.Dockerfile]
digraph {
  "sha256:8455fd2f143fc9177be46048b3de337929f685f6878e9a1e1091875855f4c2d2" [label="docker-image://docker.io/library/python:slim" shape="ellipse"];
  "sha256:af916a28c9c05ae099740aa9b6bcdbbf4af623c79f5d3d99651aeadefacf2d43" [label="mkdir{path=/tmp/fishnet}" shape="note"];
  "sha256:10120aa7d21a9cbf3d985c2d862ff1924666e2e9afd1090665fda14d9003087b" [label="/bin/sh -c pip install dumb-init" shape="box"];
  "sha256:90edba0bb423dad676cf73df8c8b8b4a3540d405ca3c47c0923556a9557cb1b3" [label="/bin/sh -c pip install fishnet" shape="box"];
  "sha256:df6c0379ff9a2fe93a6df69429546087c560d2bda7f1dcd8246f1b8438590553" [label="sha256:df6c0379ff9a2fe93a6df69429546087c560d2bda7f1dcd8246f1b8438590553" shape="plaintext"];
  "sha256:8455fd2f143fc9177be46048b3de337929f685f6878e9a1e1091875855f4c2d2" -> "sha256:af916a28c9c05ae099740aa9b6bcdbbf4af623c79f5d3d99651aeadefacf2d43" [label=""];
  "sha256:af916a28c9c05ae099740aa9b6bcdbbf4af623c79f5d3d99651aeadefacf2d43" -> "sha256:10120aa7d21a9cbf3d985c2d862ff1924666e2e9afd1090665fda14d9003087b" [label=""];
  "sha256:10120aa7d21a9cbf3d985c2d862ff1924666e2e9afd1090665fda14d9003087b" -> "sha256:90edba0bb423dad676cf73df8c8b8b4a3540d405ca3c47c0923556a9557cb1b3" [label=""];
  "sha256:90edba0bb423dad676cf73df8c8b8b4a3540d405ca3c47c0923556a9557cb1b3" -> "sha256:df6c0379ff9a2fe93a6df69429546087c560d2bda7f1dcd8246f1b8438590553" [label=""];
}

