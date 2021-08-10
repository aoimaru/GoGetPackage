[app/sources/252784936.Dockerfile]
digraph {
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" [label="docker-image://docker.io/gliderlabs/alpine:latest" shape="ellipse"];
  "sha256:4dbdeefd1fc233453022184734963c7af504ed27299ea0d799947515e3e208b7" [label="local://context" shape="ellipse"];
  "sha256:f978f1b5f1cd0373f9fe638cd4c9066c5dc20569781e8f5d2c870dcd7b0b21ca" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:01b056ec919714a358b947bb887117f990dc96dc9da276cd4e6d17778314d6c8" [label="mkdir{path=/src}" shape="note"];
  "sha256:ee286fe5ade3fe9a36ffbad5963d10dedf52ab1100c9311d67ce363f0ea6d7df" [label="/bin/sh -c ./build.sh" shape="box"];
  "sha256:f776902e0e268f7c8d704e3052a7f1c6cdbcf4305211a26616385a5aa0c9a6d9" [label="sha256:f776902e0e268f7c8d704e3052a7f1c6cdbcf4305211a26616385a5aa0c9a6d9" shape="plaintext"];
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" -> "sha256:f978f1b5f1cd0373f9fe638cd4c9066c5dc20569781e8f5d2c870dcd7b0b21ca" [label=""];
  "sha256:4dbdeefd1fc233453022184734963c7af504ed27299ea0d799947515e3e208b7" -> "sha256:f978f1b5f1cd0373f9fe638cd4c9066c5dc20569781e8f5d2c870dcd7b0b21ca" [label=""];
  "sha256:f978f1b5f1cd0373f9fe638cd4c9066c5dc20569781e8f5d2c870dcd7b0b21ca" -> "sha256:01b056ec919714a358b947bb887117f990dc96dc9da276cd4e6d17778314d6c8" [label=""];
  "sha256:01b056ec919714a358b947bb887117f990dc96dc9da276cd4e6d17778314d6c8" -> "sha256:ee286fe5ade3fe9a36ffbad5963d10dedf52ab1100c9311d67ce363f0ea6d7df" [label=""];
  "sha256:ee286fe5ade3fe9a36ffbad5963d10dedf52ab1100c9311d67ce363f0ea6d7df" -> "sha256:f776902e0e268f7c8d704e3052a7f1c6cdbcf4305211a26616385a5aa0c9a6d9" [label=""];
}

