[app/sources/252793963.Dockerfile]
digraph {
  "sha256:14f5cac824428c3f6aa9fa0e36785cca16f0a7d48f51268668a15e7bff8a454d" [label="local://context" shape="ellipse"];
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" [label="docker-image://docker.io/gliderlabs/alpine:latest" shape="ellipse"];
  "sha256:77eca57a51be4f52708701993eb1c9828f4d6e2e2a891d5b2403d26fe1859697" [label="copy{src=/bootstrap.sh, dest=/tmp/bootstrap.sh}" shape="note"];
  "sha256:86ac4428202cb4640ebe5007c3eb4245e56f70a24719504af4d8de53cf0bb62d" [label="/bin/sh -c chmod +x /tmp/bootstrap.sh && sh /tmp/bootstrap.sh" shape="box"];
  "sha256:d454a77e9376ea7ba7ffed88b1b424ab96ebacfb6b277c5be9385e542d4d4eb5" [label="sha256:d454a77e9376ea7ba7ffed88b1b424ab96ebacfb6b277c5be9385e542d4d4eb5" shape="plaintext"];
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" -> "sha256:77eca57a51be4f52708701993eb1c9828f4d6e2e2a891d5b2403d26fe1859697" [label=""];
  "sha256:14f5cac824428c3f6aa9fa0e36785cca16f0a7d48f51268668a15e7bff8a454d" -> "sha256:77eca57a51be4f52708701993eb1c9828f4d6e2e2a891d5b2403d26fe1859697" [label=""];
  "sha256:77eca57a51be4f52708701993eb1c9828f4d6e2e2a891d5b2403d26fe1859697" -> "sha256:86ac4428202cb4640ebe5007c3eb4245e56f70a24719504af4d8de53cf0bb62d" [label=""];
  "sha256:86ac4428202cb4640ebe5007c3eb4245e56f70a24719504af4d8de53cf0bb62d" -> "sha256:d454a77e9376ea7ba7ffed88b1b424ab96ebacfb6b277c5be9385e542d4d4eb5" [label=""];
}

