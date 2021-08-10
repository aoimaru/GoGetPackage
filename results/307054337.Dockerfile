[app/sources/307054337.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:cffb85430626d0fc77eaaf467585532712c6a4275d97769a466b81a76a86941b" [label="local://context" shape="ellipse"];
  "sha256:dabc043945272f4bd3540058c172b31a5de008684b12d644dd97cf6627297d83" [label="copy{src=/launcher.sh, dest=/app/launcher.sh}" shape="note"];
  "sha256:841ca1cf0a2a172b3d64ab8241ed301a4a9b148660425abbb371de494819cbe0" [label="copy{src=/launcher_funcs.sh, dest=/app/launcher_funcs.sh}" shape="note"];
  "sha256:66e4e8e01b2a1f5787838d8dc5ed7403de702351e1f0cff6adcb9e1c1a0ec209" [label="/bin/sh -c apk add --no-cache     ca-certificates     curl     openssl" shape="box"];
  "sha256:c72d918bcb6ada659461c4250b002dea4046617744beb3aa4917bd827df1c4ec" [label="/bin/sh -c curl -fL -o docker.tgz \"https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz\" &&       tar --extract           --file docker.tgz           --strip-components 1           --directory /usr/local/bin/" shape="box"];
  "sha256:e4f1fbd0f34ca99ab18062795d5401d5b55720161e46e8e98715d00cfb8e585b" [label="sha256:e4f1fbd0f34ca99ab18062795d5401d5b55720161e46e8e98715d00cfb8e585b" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:dabc043945272f4bd3540058c172b31a5de008684b12d644dd97cf6627297d83" [label=""];
  "sha256:cffb85430626d0fc77eaaf467585532712c6a4275d97769a466b81a76a86941b" -> "sha256:dabc043945272f4bd3540058c172b31a5de008684b12d644dd97cf6627297d83" [label=""];
  "sha256:dabc043945272f4bd3540058c172b31a5de008684b12d644dd97cf6627297d83" -> "sha256:841ca1cf0a2a172b3d64ab8241ed301a4a9b148660425abbb371de494819cbe0" [label=""];
  "sha256:cffb85430626d0fc77eaaf467585532712c6a4275d97769a466b81a76a86941b" -> "sha256:841ca1cf0a2a172b3d64ab8241ed301a4a9b148660425abbb371de494819cbe0" [label=""];
  "sha256:841ca1cf0a2a172b3d64ab8241ed301a4a9b148660425abbb371de494819cbe0" -> "sha256:66e4e8e01b2a1f5787838d8dc5ed7403de702351e1f0cff6adcb9e1c1a0ec209" [label=""];
  "sha256:66e4e8e01b2a1f5787838d8dc5ed7403de702351e1f0cff6adcb9e1c1a0ec209" -> "sha256:c72d918bcb6ada659461c4250b002dea4046617744beb3aa4917bd827df1c4ec" [label=""];
  "sha256:c72d918bcb6ada659461c4250b002dea4046617744beb3aa4917bd827df1c4ec" -> "sha256:e4f1fbd0f34ca99ab18062795d5401d5b55720161e46e8e98715d00cfb8e585b" [label=""];
}

