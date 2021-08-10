[app/sources/351585081.Dockerfile]
digraph {
  "sha256:9c7f9bb7672ec4b22d1238c4ba601ec1e22c0ff0a1a5369907950805b6a52762" [label="docker-image://docker.io/asosso/maxscale:2.0.4" shape="ellipse"];
  "sha256:36960f4da98e450f2828ac4ee1145b944c17fb84fd02b5c069ebe783f03e1f85" [label="/bin/sh -c yum update -y && yum install -y bind-utils" shape="box"];
  "sha256:80ff76fc8845bf80947777969990edce505ef8c703e886b39dbdb8049f70e31d" [label="local://context" shape="ellipse"];
  "sha256:b5dc1fe98e64468f45bd0ad39649760f90056c3d3d22d8ca836b7bca009beda8" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:ddbdff2b386a045d2124c3fb4d76c498dc24cd6ae77dd9c2e3b80d804a89c654" [label="sha256:ddbdff2b386a045d2124c3fb4d76c498dc24cd6ae77dd9c2e3b80d804a89c654" shape="plaintext"];
  "sha256:9c7f9bb7672ec4b22d1238c4ba601ec1e22c0ff0a1a5369907950805b6a52762" -> "sha256:36960f4da98e450f2828ac4ee1145b944c17fb84fd02b5c069ebe783f03e1f85" [label=""];
  "sha256:36960f4da98e450f2828ac4ee1145b944c17fb84fd02b5c069ebe783f03e1f85" -> "sha256:b5dc1fe98e64468f45bd0ad39649760f90056c3d3d22d8ca836b7bca009beda8" [label=""];
  "sha256:80ff76fc8845bf80947777969990edce505ef8c703e886b39dbdb8049f70e31d" -> "sha256:b5dc1fe98e64468f45bd0ad39649760f90056c3d3d22d8ca836b7bca009beda8" [label=""];
  "sha256:b5dc1fe98e64468f45bd0ad39649760f90056c3d3d22d8ca836b7bca009beda8" -> "sha256:ddbdff2b386a045d2124c3fb4d76c498dc24cd6ae77dd9c2e3b80d804a89c654" [label=""];
}

