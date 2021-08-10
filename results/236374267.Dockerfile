[app/sources/236374267.Dockerfile]
digraph {
  "sha256:b3539c104d3dd55e62fe7320f039eef257594ef83092edc6a436a39572daae33" [label="docker-image://docker.io/leansys/jdk8-busybox:latest" shape="ellipse"];
  "sha256:1b3784b4f073e001277379b484eb49f83d562ce48deb128503f7a36acc3f3a5b" [label="local://context" shape="ellipse"];
  "sha256:04ca7cd1b2f7ab6c897cf00f63d765314fa20ecb83b7e55d2b866c5ec425a872" [label="copy{src=/-impl-1.0-SNAPSHOT.tgz, dest=/tmp/package.tgz}" shape="note"];
  "sha256:380ba4750fc3b17100dddadcd2b0cc8e7d87e117149d0550c206fe9b09ff9f70" [label="/bin/sh -c tar zxf /tmp/package.tgz -C /opt && rm /tmp/package.tgz" shape="box"];
  "sha256:f49094591d7b397ff1b0d65812369e089fa30860171b618006e01b0f438d5f67" [label="sha256:f49094591d7b397ff1b0d65812369e089fa30860171b618006e01b0f438d5f67" shape="plaintext"];
  "sha256:b3539c104d3dd55e62fe7320f039eef257594ef83092edc6a436a39572daae33" -> "sha256:04ca7cd1b2f7ab6c897cf00f63d765314fa20ecb83b7e55d2b866c5ec425a872" [label=""];
  "sha256:1b3784b4f073e001277379b484eb49f83d562ce48deb128503f7a36acc3f3a5b" -> "sha256:04ca7cd1b2f7ab6c897cf00f63d765314fa20ecb83b7e55d2b866c5ec425a872" [label=""];
  "sha256:04ca7cd1b2f7ab6c897cf00f63d765314fa20ecb83b7e55d2b866c5ec425a872" -> "sha256:380ba4750fc3b17100dddadcd2b0cc8e7d87e117149d0550c206fe9b09ff9f70" [label=""];
  "sha256:380ba4750fc3b17100dddadcd2b0cc8e7d87e117149d0550c206fe9b09ff9f70" -> "sha256:f49094591d7b397ff1b0d65812369e089fa30860171b618006e01b0f438d5f67" [label=""];
}

