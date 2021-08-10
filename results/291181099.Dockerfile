[app/sources/291181099.Dockerfile]
digraph {
  "sha256:faa63983c6232dcf9b157697f7f1ecaf1fc3c6e19ef2bee9a7c52af33a8ade9f" [label="docker-image://docker.io/circleci/mongo:3.6.3@sha256:d40da4e218466218c5e3d86686f1482d992d0b821f8afccd98750d57a992113f" shape="ellipse"];
  "sha256:e719e78b62b8a29164675907ef8cec3ed8830259d5a71bee99fe1aedbec0a1b5" [label="/bin/sh -c sed -i '/exec \"$@\"/i mkdir \\/dev\\/shm\\/mongo' /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:26040e4f19d243837ad0411439cec86214362e17270d1c6bb31fc57c309fe9ed" [label="sha256:26040e4f19d243837ad0411439cec86214362e17270d1c6bb31fc57c309fe9ed" shape="plaintext"];
  "sha256:faa63983c6232dcf9b157697f7f1ecaf1fc3c6e19ef2bee9a7c52af33a8ade9f" -> "sha256:e719e78b62b8a29164675907ef8cec3ed8830259d5a71bee99fe1aedbec0a1b5" [label=""];
  "sha256:e719e78b62b8a29164675907ef8cec3ed8830259d5a71bee99fe1aedbec0a1b5" -> "sha256:26040e4f19d243837ad0411439cec86214362e17270d1c6bb31fc57c309fe9ed" [label=""];
}

