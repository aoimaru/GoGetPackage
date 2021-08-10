[app/sources/386033422.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:86576b45c26679ce5a3c5b0ae3e7776a52e2f8efc0e3b201d868db3f641b24d6" [label="/bin/sh -c echo hello > /newfile" shape="box"];
  "sha256:234266d1d6afb8793d0745c8972a7e98dbf3d7f83c96510bad5fd8454595c3b9" [label="/bin/sh -c test -s /newfile" shape="box"];
  "sha256:58e1767e108e91a0e120189bdc7f79590dee3521dd343b3f7ad32df17b8fa412" [label="sha256:58e1767e108e91a0e120189bdc7f79590dee3521dd343b3f7ad32df17b8fa412" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:86576b45c26679ce5a3c5b0ae3e7776a52e2f8efc0e3b201d868db3f641b24d6" [label=""];
  "sha256:86576b45c26679ce5a3c5b0ae3e7776a52e2f8efc0e3b201d868db3f641b24d6" -> "sha256:234266d1d6afb8793d0745c8972a7e98dbf3d7f83c96510bad5fd8454595c3b9" [label=""];
  "sha256:234266d1d6afb8793d0745c8972a7e98dbf3d7f83c96510bad5fd8454595c3b9" -> "sha256:58e1767e108e91a0e120189bdc7f79590dee3521dd343b3f7ad32df17b8fa412" [label=""];
}

