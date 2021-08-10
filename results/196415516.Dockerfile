[app/sources/196415516.Dockerfile]
digraph {
  "sha256:23d5706124ac4f0c64ad252fb2b5c1feff6fb92d6cff27fb472205d6d02d6de3" [label="docker-image://docker.io/alexellis2/node4.x-arm:latest" shape="ellipse"];
  "sha256:cdc3893992c2dba6e099420cdbd1305d57abf525a9b129df4b5a6856d9396913" [label="local://context" shape="ellipse"];
  "sha256:0a6452a1077a8a2914d4b88ae211ec8efb8e574d3d8f00915a1aec2cc5df48df" [label="copy{src=/app.js, dest=/}" shape="note"];
  "sha256:74945412d2aaa698220008f29504556a33586fe7fab8c868cea82eecf0f9c52f" [label="copy{src=/package.json, dest=/}" shape="note"];
  "sha256:6bd3bd1fb54eb67861505ab2d3d520e1645ba3af53185dde52931f5ea0a1ec55" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b499463654079d922e16fd009793cec1ae57e4a161f883751f06172635bcf1fe" [label="sha256:b499463654079d922e16fd009793cec1ae57e4a161f883751f06172635bcf1fe" shape="plaintext"];
  "sha256:23d5706124ac4f0c64ad252fb2b5c1feff6fb92d6cff27fb472205d6d02d6de3" -> "sha256:0a6452a1077a8a2914d4b88ae211ec8efb8e574d3d8f00915a1aec2cc5df48df" [label=""];
  "sha256:cdc3893992c2dba6e099420cdbd1305d57abf525a9b129df4b5a6856d9396913" -> "sha256:0a6452a1077a8a2914d4b88ae211ec8efb8e574d3d8f00915a1aec2cc5df48df" [label=""];
  "sha256:0a6452a1077a8a2914d4b88ae211ec8efb8e574d3d8f00915a1aec2cc5df48df" -> "sha256:74945412d2aaa698220008f29504556a33586fe7fab8c868cea82eecf0f9c52f" [label=""];
  "sha256:cdc3893992c2dba6e099420cdbd1305d57abf525a9b129df4b5a6856d9396913" -> "sha256:74945412d2aaa698220008f29504556a33586fe7fab8c868cea82eecf0f9c52f" [label=""];
  "sha256:74945412d2aaa698220008f29504556a33586fe7fab8c868cea82eecf0f9c52f" -> "sha256:6bd3bd1fb54eb67861505ab2d3d520e1645ba3af53185dde52931f5ea0a1ec55" [label=""];
  "sha256:6bd3bd1fb54eb67861505ab2d3d520e1645ba3af53185dde52931f5ea0a1ec55" -> "sha256:b499463654079d922e16fd009793cec1ae57e4a161f883751f06172635bcf1fe" [label=""];
}

