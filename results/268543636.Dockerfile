[app/sources/268543636.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:b079d7a172a9ce884997dee75d1114de28270d881877bd2611c3bf137f16bb9f" [label="mkdir{path=/app}" shape="note"];
  "sha256:ff007b2e056fc1737f196e24e146ea6ad5017832273befa4a35969f5d4805830" [label="local://context" shape="ellipse"];
  "sha256:c46c77d6dc3e5ff4da5e0abaf569df0931712cd62e7433f7b58e5503a5ae5c94" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:4d0994281aa767b598b3eb6408a9151dd4e2cd42f5d0de30216cf12e91d9cf6d" [label="/bin/sh -c apk update && apk upgrade   && apk add  --no-cache ca-certificates nodejs   && npm install    && rm -rf /var/cache/* -rf /tmp/npm*" shape="box"];
  "sha256:71fc62674fa792bc761a418022e710da5764c3dde80cfb2c5b629f6baf6cdfba" [label="sha256:71fc62674fa792bc761a418022e710da5764c3dde80cfb2c5b629f6baf6cdfba" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:b079d7a172a9ce884997dee75d1114de28270d881877bd2611c3bf137f16bb9f" [label=""];
  "sha256:b079d7a172a9ce884997dee75d1114de28270d881877bd2611c3bf137f16bb9f" -> "sha256:c46c77d6dc3e5ff4da5e0abaf569df0931712cd62e7433f7b58e5503a5ae5c94" [label=""];
  "sha256:ff007b2e056fc1737f196e24e146ea6ad5017832273befa4a35969f5d4805830" -> "sha256:c46c77d6dc3e5ff4da5e0abaf569df0931712cd62e7433f7b58e5503a5ae5c94" [label=""];
  "sha256:c46c77d6dc3e5ff4da5e0abaf569df0931712cd62e7433f7b58e5503a5ae5c94" -> "sha256:4d0994281aa767b598b3eb6408a9151dd4e2cd42f5d0de30216cf12e91d9cf6d" [label=""];
  "sha256:4d0994281aa767b598b3eb6408a9151dd4e2cd42f5d0de30216cf12e91d9cf6d" -> "sha256:71fc62674fa792bc761a418022e710da5764c3dde80cfb2c5b629f6baf6cdfba" [label=""];
}

