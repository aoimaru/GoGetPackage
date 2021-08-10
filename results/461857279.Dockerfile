[app/sources/461857279.Dockerfile]
digraph {
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" [label="docker-image://docker.io/library/solaris:latest" shape="ellipse"];
  "sha256:fc80fee4c8d1d569d4e1e61b4964a825fe1c23f464b623bfe1b64fc94e28e097" [label="local://context" shape="ellipse"];
  "sha256:ddd8437bc081ea4b1fbe78da5b3be6b688144c57c01a3681ef70db9b9adaad68" [label="copy{src=/httpserver, dest=/}" shape="note"];
  "sha256:ee75746f608b8a6cc8b19f836515c838b71e585dbe6fd23efd6b5f2c0a419c37" [label="sha256:ee75746f608b8a6cc8b19f836515c838b71e585dbe6fd23efd6b5f2c0a419c37" shape="plaintext"];
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" -> "sha256:ddd8437bc081ea4b1fbe78da5b3be6b688144c57c01a3681ef70db9b9adaad68" [label=""];
  "sha256:fc80fee4c8d1d569d4e1e61b4964a825fe1c23f464b623bfe1b64fc94e28e097" -> "sha256:ddd8437bc081ea4b1fbe78da5b3be6b688144c57c01a3681ef70db9b9adaad68" [label=""];
  "sha256:ddd8437bc081ea4b1fbe78da5b3be6b688144c57c01a3681ef70db9b9adaad68" -> "sha256:ee75746f608b8a6cc8b19f836515c838b71e585dbe6fd23efd6b5f2c0a419c37" [label=""];
}

