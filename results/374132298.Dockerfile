[app/sources/374132298.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:f10cf664edcbac06de829b61da9bf69827a8b1b3881179a9be10be7d63f8877b" [label="/bin/sh -c apk add --no-cache python3 &&     python3 -m ensurepip &&     rm -r /usr/lib/python*/ensurepip &&     pip3 install --upgrade pip setuptools &&     if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi &&     if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi &&     rm -r /root/.cache" shape="box"];
  "sha256:8a878cdceb7a4f1fac8abe2b235423ca66c9f240fc4244837188db1f2c531261" [label="/bin/sh -c apk add git" shape="box"];
  "sha256:006825719b88e4d4c854328dec1f23578e4228215fdd47e8ad82c0ca1d6fb884" [label="/bin/sh -c git clone https://github.com/GitHackTools/FTPBruter.git /tmp/ftpbruter" shape="box"];
  "sha256:582429c2845478ca4c718d7177d1a92353a7b8f4781dfd0fde1e2affc15d1ade" [label="mkdir{path=/tmp/ftpbruter}" shape="note"];
  "sha256:7f6824888decc3bd8088c9615ca8efa291912b22bb89032680f581ae79a27153" [label="sha256:7f6824888decc3bd8088c9615ca8efa291912b22bb89032680f581ae79a27153" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:f10cf664edcbac06de829b61da9bf69827a8b1b3881179a9be10be7d63f8877b" [label=""];
  "sha256:f10cf664edcbac06de829b61da9bf69827a8b1b3881179a9be10be7d63f8877b" -> "sha256:8a878cdceb7a4f1fac8abe2b235423ca66c9f240fc4244837188db1f2c531261" [label=""];
  "sha256:8a878cdceb7a4f1fac8abe2b235423ca66c9f240fc4244837188db1f2c531261" -> "sha256:006825719b88e4d4c854328dec1f23578e4228215fdd47e8ad82c0ca1d6fb884" [label=""];
  "sha256:006825719b88e4d4c854328dec1f23578e4228215fdd47e8ad82c0ca1d6fb884" -> "sha256:582429c2845478ca4c718d7177d1a92353a7b8f4781dfd0fde1e2affc15d1ade" [label=""];
  "sha256:582429c2845478ca4c718d7177d1a92353a7b8f4781dfd0fde1e2affc15d1ade" -> "sha256:7f6824888decc3bd8088c9615ca8efa291912b22bb89032680f581ae79a27153" [label=""];
}

