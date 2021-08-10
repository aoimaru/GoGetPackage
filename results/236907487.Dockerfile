[app/sources/236907487.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5dc81bc9c472bc10366dd0c86285bceb5a64eb2d093773fe32ae1530a57c212a" [label="local://context" shape="ellipse"];
  "sha256:a675fcb2ed99835817ff6f4ef5104cbf473a09376c88f38d5fda1da12f9e13ba" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:949aa95b1d12b6ab071b538c30c56d8bbc9bd58df3e07c13266511ee880bb58f" [label="/bin/sh -c apk --no-cache --update add bash nfs-utils   && chmod +x /entrypoint.sh" shape="box"];
  "sha256:dece6404547221bdde9918b30cd16de1577300b6e14295fdfee8478ecffc377e" [label="sha256:dece6404547221bdde9918b30cd16de1577300b6e14295fdfee8478ecffc377e" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:a675fcb2ed99835817ff6f4ef5104cbf473a09376c88f38d5fda1da12f9e13ba" [label=""];
  "sha256:5dc81bc9c472bc10366dd0c86285bceb5a64eb2d093773fe32ae1530a57c212a" -> "sha256:a675fcb2ed99835817ff6f4ef5104cbf473a09376c88f38d5fda1da12f9e13ba" [label=""];
  "sha256:a675fcb2ed99835817ff6f4ef5104cbf473a09376c88f38d5fda1da12f9e13ba" -> "sha256:949aa95b1d12b6ab071b538c30c56d8bbc9bd58df3e07c13266511ee880bb58f" [label=""];
  "sha256:949aa95b1d12b6ab071b538c30c56d8bbc9bd58df3e07c13266511ee880bb58f" -> "sha256:dece6404547221bdde9918b30cd16de1577300b6e14295fdfee8478ecffc377e" [label=""];
}

