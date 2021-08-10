[app/sources/239355336.Dockerfile]
digraph {
  "sha256:12f371d7338b0e1faf98f5c1290d2deead5043133d8dca525ed22586fea86da4" [label="docker-image://docker.io/library/node:7-alpine" shape="ellipse"];
  "sha256:24481c2ef27e62c89e568fb6a7c80d377452cf819ef3f917118882deb1e4c4d9" [label="local://context" shape="ellipse"];
  "sha256:0c5ea148783ba3ae200aa4e01c83782c795ed496d2492b90e947e72f927c204a" [label="copy{src=/stethoscope/ui, dest=/code/stethoscope/ui}" shape="note"];
  "sha256:3d623dfce73292ef5696ed958ca65e8895989c84c1f0eded72f573593d22920f" [label="mkdir{path=/code/stethoscope/ui}" shape="note"];
  "sha256:30c41bd236ebd673d9a3b51442a4d6c0a2cb79568189c937447089a91c41ea37" [label="/bin/sh -c npm install" shape="box"];
  "sha256:8d394384d0711cd7c047af48caa97d395939dac98c9e09346d5ddb1c051b280d" [label="sha256:8d394384d0711cd7c047af48caa97d395939dac98c9e09346d5ddb1c051b280d" shape="plaintext"];
  "sha256:12f371d7338b0e1faf98f5c1290d2deead5043133d8dca525ed22586fea86da4" -> "sha256:0c5ea148783ba3ae200aa4e01c83782c795ed496d2492b90e947e72f927c204a" [label=""];
  "sha256:24481c2ef27e62c89e568fb6a7c80d377452cf819ef3f917118882deb1e4c4d9" -> "sha256:0c5ea148783ba3ae200aa4e01c83782c795ed496d2492b90e947e72f927c204a" [label=""];
  "sha256:0c5ea148783ba3ae200aa4e01c83782c795ed496d2492b90e947e72f927c204a" -> "sha256:3d623dfce73292ef5696ed958ca65e8895989c84c1f0eded72f573593d22920f" [label=""];
  "sha256:3d623dfce73292ef5696ed958ca65e8895989c84c1f0eded72f573593d22920f" -> "sha256:30c41bd236ebd673d9a3b51442a4d6c0a2cb79568189c937447089a91c41ea37" [label=""];
  "sha256:30c41bd236ebd673d9a3b51442a4d6c0a2cb79568189c937447089a91c41ea37" -> "sha256:8d394384d0711cd7c047af48caa97d395939dac98c9e09346d5ddb1c051b280d" [label=""];
}

