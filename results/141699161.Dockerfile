[app/sources/141699161.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:40a9307dbe93740e122be56f638f07bba2f3e3ef62e596c955f0c99a72d7fbc1" [label="local://context" shape="ellipse"];
  "sha256:6c95886142410417df7e1dd6110647e7cc889499ef9ac6b37bee2c6e6efa99a9" [label="copy{src=/httpserver, dest=/}" shape="note"];
  "sha256:61dde34678e2258836a0cdd067e30d9ed0917e75fdbde518b79421f3307d077d" [label="sha256:61dde34678e2258836a0cdd067e30d9ed0917e75fdbde518b79421f3307d077d" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:6c95886142410417df7e1dd6110647e7cc889499ef9ac6b37bee2c6e6efa99a9" [label=""];
  "sha256:40a9307dbe93740e122be56f638f07bba2f3e3ef62e596c955f0c99a72d7fbc1" -> "sha256:6c95886142410417df7e1dd6110647e7cc889499ef9ac6b37bee2c6e6efa99a9" [label=""];
  "sha256:6c95886142410417df7e1dd6110647e7cc889499ef9ac6b37bee2c6e6efa99a9" -> "sha256:61dde34678e2258836a0cdd067e30d9ed0917e75fdbde518b79421f3307d077d" [label=""];
}

