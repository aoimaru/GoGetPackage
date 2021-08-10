[app/sources/296477002.Dockerfile]
digraph {
  "sha256:6575ac1832b2e59ca2b98dc3c6d5b0a6692936429c186878680ade4091f61d2c" [label="docker-image://docker.io/library/postgres:10.2-alpine" shape="ellipse"];
  "sha256:27ef0be25cd2c4fa5775685da33a10bd7a92f9ba78ac5df0750dd56ce9126996" [label="/bin/sh -c set -x   && apk add --update --no-cache ca-certificates" shape="box"];
  "sha256:d165efe5dc2fde9d2efd6850212ea385ba4cc21d4f8e3663b46f88f489d366c3" [label="local://context" shape="ellipse"];
  "sha256:28153909a1a76432ad2748641d1be4a6f6c16ae4243b0667572c4a2fa8c5ff32" [label="copy{src=/osm, dest=/usr/local/bin/osm}" shape="note"];
  "sha256:00cc5d2e11b78054590f7704be6e13276e1b44736549b87e7ef182dc6700fc81" [label="copy{src=/postgres-tools.sh, dest=/usr/local/bin/postgres-tools.sh}" shape="note"];
  "sha256:a6db09e568b14d733e87ca3f36e12aa72dc5c0980ad63b8619c826d36747fc3c" [label="sha256:a6db09e568b14d733e87ca3f36e12aa72dc5c0980ad63b8619c826d36747fc3c" shape="plaintext"];
  "sha256:6575ac1832b2e59ca2b98dc3c6d5b0a6692936429c186878680ade4091f61d2c" -> "sha256:27ef0be25cd2c4fa5775685da33a10bd7a92f9ba78ac5df0750dd56ce9126996" [label=""];
  "sha256:27ef0be25cd2c4fa5775685da33a10bd7a92f9ba78ac5df0750dd56ce9126996" -> "sha256:28153909a1a76432ad2748641d1be4a6f6c16ae4243b0667572c4a2fa8c5ff32" [label=""];
  "sha256:d165efe5dc2fde9d2efd6850212ea385ba4cc21d4f8e3663b46f88f489d366c3" -> "sha256:28153909a1a76432ad2748641d1be4a6f6c16ae4243b0667572c4a2fa8c5ff32" [label=""];
  "sha256:28153909a1a76432ad2748641d1be4a6f6c16ae4243b0667572c4a2fa8c5ff32" -> "sha256:00cc5d2e11b78054590f7704be6e13276e1b44736549b87e7ef182dc6700fc81" [label=""];
  "sha256:d165efe5dc2fde9d2efd6850212ea385ba4cc21d4f8e3663b46f88f489d366c3" -> "sha256:00cc5d2e11b78054590f7704be6e13276e1b44736549b87e7ef182dc6700fc81" [label=""];
  "sha256:00cc5d2e11b78054590f7704be6e13276e1b44736549b87e7ef182dc6700fc81" -> "sha256:a6db09e568b14d733e87ca3f36e12aa72dc5c0980ad63b8619c826d36747fc3c" [label=""];
}

