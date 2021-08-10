[app/sources/252794382.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:86ca199adf0630444bf155e8813d04121e10aa51730b8d755f046b31fa4240c9" [label="/bin/sh -c apk add --update make gcc g++ python curl git krb5-dev zeromq-dev" shape="box"];
  "sha256:da09a8620b6894efe2ca6dc692557079cf0dc003baca13fbc1271e7ed76d83b2" [label="local://context" shape="ellipse"];
  "sha256:f06688c47aa4dbddb6f78622af1561388776a0f5e44c91bb84b2677501eaef23" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:f1504eac02a0a8499869ec8a0bc1291b5d6471c248d0aa80ef0e2556d20b4b3a" [label="/bin/sh -c npm install zeromq --zmq-external --save" shape="box"];
  "sha256:9e22d331300a3325b90440f70615c30d27d531c6debf14537948bc75def3c56f" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:394a9f10a9a2243d26d45b8148aa0085640e5cc2d4fa1c6fffa5e69aaa4ddef9" [label="sha256:394a9f10a9a2243d26d45b8148aa0085640e5cc2d4fa1c6fffa5e69aaa4ddef9" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:86ca199adf0630444bf155e8813d04121e10aa51730b8d755f046b31fa4240c9" [label=""];
  "sha256:86ca199adf0630444bf155e8813d04121e10aa51730b8d755f046b31fa4240c9" -> "sha256:f06688c47aa4dbddb6f78622af1561388776a0f5e44c91bb84b2677501eaef23" [label=""];
  "sha256:da09a8620b6894efe2ca6dc692557079cf0dc003baca13fbc1271e7ed76d83b2" -> "sha256:f06688c47aa4dbddb6f78622af1561388776a0f5e44c91bb84b2677501eaef23" [label=""];
  "sha256:f06688c47aa4dbddb6f78622af1561388776a0f5e44c91bb84b2677501eaef23" -> "sha256:f1504eac02a0a8499869ec8a0bc1291b5d6471c248d0aa80ef0e2556d20b4b3a" [label=""];
  "sha256:f1504eac02a0a8499869ec8a0bc1291b5d6471c248d0aa80ef0e2556d20b4b3a" -> "sha256:9e22d331300a3325b90440f70615c30d27d531c6debf14537948bc75def3c56f" [label=""];
  "sha256:9e22d331300a3325b90440f70615c30d27d531c6debf14537948bc75def3c56f" -> "sha256:394a9f10a9a2243d26d45b8148aa0085640e5cc2d4fa1c6fffa5e69aaa4ddef9" [label=""];
}

