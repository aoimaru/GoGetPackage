[app/sources/463879176.Dockerfile]
digraph {
  "sha256:30a7e390ff21d4864dbcf2e9c6e1ef6632414a6548a13904a3d23aca68369682" [label="local://context" shape="ellipse"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:6fd302b203575ec181e2a483f831a34e296d569bbc8b8b7d47c7c32693d0cdf8" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:d0110ab3d1e4e190920b20b9db0c92303cf3cdd65773e7f3dbaa6aa25d0e377e" [label="mkdir{path=/app}" shape="note"];
  "sha256:f68cff920d375388e329fd7ba8e7a3f0de6baf3c9c20f125f72176f175faf59f" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:2c9c0d1e312ab89f4ff4999ec00916ad0ed07ee3303f71d1bbd4ab7ae050539d" [label="copy{src=/package-lock.json, dest=/app/}" shape="note"];
  "sha256:e552877e285524e027bdadb1cb01ef235525ea0ca60f667b24ad3e4db9ae0474" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:1b8b77960b6b0ee8cce896abbb6ef8f02502017d3aa2495f1bc63c4f30f8f39a" [label="copy{src=/src, dest=/app/src}" shape="note"];
  "sha256:114c161f4a92dd8716a2234725d1c354d1d17b5da66281d76bb98a485e1d0230" [label="sha256:114c161f4a92dd8716a2234725d1c354d1d17b5da66281d76bb98a485e1d0230" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:6fd302b203575ec181e2a483f831a34e296d569bbc8b8b7d47c7c32693d0cdf8" [label=""];
  "sha256:6fd302b203575ec181e2a483f831a34e296d569bbc8b8b7d47c7c32693d0cdf8" -> "sha256:d0110ab3d1e4e190920b20b9db0c92303cf3cdd65773e7f3dbaa6aa25d0e377e" [label=""];
  "sha256:d0110ab3d1e4e190920b20b9db0c92303cf3cdd65773e7f3dbaa6aa25d0e377e" -> "sha256:f68cff920d375388e329fd7ba8e7a3f0de6baf3c9c20f125f72176f175faf59f" [label=""];
  "sha256:30a7e390ff21d4864dbcf2e9c6e1ef6632414a6548a13904a3d23aca68369682" -> "sha256:f68cff920d375388e329fd7ba8e7a3f0de6baf3c9c20f125f72176f175faf59f" [label=""];
  "sha256:f68cff920d375388e329fd7ba8e7a3f0de6baf3c9c20f125f72176f175faf59f" -> "sha256:2c9c0d1e312ab89f4ff4999ec00916ad0ed07ee3303f71d1bbd4ab7ae050539d" [label=""];
  "sha256:30a7e390ff21d4864dbcf2e9c6e1ef6632414a6548a13904a3d23aca68369682" -> "sha256:2c9c0d1e312ab89f4ff4999ec00916ad0ed07ee3303f71d1bbd4ab7ae050539d" [label=""];
  "sha256:2c9c0d1e312ab89f4ff4999ec00916ad0ed07ee3303f71d1bbd4ab7ae050539d" -> "sha256:e552877e285524e027bdadb1cb01ef235525ea0ca60f667b24ad3e4db9ae0474" [label=""];
  "sha256:e552877e285524e027bdadb1cb01ef235525ea0ca60f667b24ad3e4db9ae0474" -> "sha256:1b8b77960b6b0ee8cce896abbb6ef8f02502017d3aa2495f1bc63c4f30f8f39a" [label=""];
  "sha256:30a7e390ff21d4864dbcf2e9c6e1ef6632414a6548a13904a3d23aca68369682" -> "sha256:1b8b77960b6b0ee8cce896abbb6ef8f02502017d3aa2495f1bc63c4f30f8f39a" [label=""];
  "sha256:1b8b77960b6b0ee8cce896abbb6ef8f02502017d3aa2495f1bc63c4f30f8f39a" -> "sha256:114c161f4a92dd8716a2234725d1c354d1d17b5da66281d76bb98a485e1d0230" [label=""];
}

