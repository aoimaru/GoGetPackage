[app/sources/475335897.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:2e15f3c27db552ed186eb18a56fe56267154d545702f8645ba86c85ea83797e2" [label="local://context" shape="ellipse"];
  "sha256:5064f7e23f4c144e16ff64f7481f08392e20407b3abe0d0175a597ece1a76452" [label="copy{src=/etcd, dest=/usr/local/bin/etcd}" shape="note"];
  "sha256:70697903bf9c7cdc3b568416c89b1f44aa1f8526a3279b6bc6b67eba29c1a59c" [label="copy{src=/etcdctl, dest=/usr/local/bin/etcdctl}" shape="note"];
  "sha256:f4d096e272f843a93543c9b833c19fd2aed1bf2a8b4629bc825758b6670c248d" [label="sha256:f4d096e272f843a93543c9b833c19fd2aed1bf2a8b4629bc825758b6670c248d" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:5064f7e23f4c144e16ff64f7481f08392e20407b3abe0d0175a597ece1a76452" [label=""];
  "sha256:2e15f3c27db552ed186eb18a56fe56267154d545702f8645ba86c85ea83797e2" -> "sha256:5064f7e23f4c144e16ff64f7481f08392e20407b3abe0d0175a597ece1a76452" [label=""];
  "sha256:5064f7e23f4c144e16ff64f7481f08392e20407b3abe0d0175a597ece1a76452" -> "sha256:70697903bf9c7cdc3b568416c89b1f44aa1f8526a3279b6bc6b67eba29c1a59c" [label=""];
  "sha256:2e15f3c27db552ed186eb18a56fe56267154d545702f8645ba86c85ea83797e2" -> "sha256:70697903bf9c7cdc3b568416c89b1f44aa1f8526a3279b6bc6b67eba29c1a59c" [label=""];
  "sha256:70697903bf9c7cdc3b568416c89b1f44aa1f8526a3279b6bc6b67eba29c1a59c" -> "sha256:f4d096e272f843a93543c9b833c19fd2aed1bf2a8b4629bc825758b6670c248d" [label=""];
}
