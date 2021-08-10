[app/sources/236238174.Dockerfile]
digraph {
  "sha256:064743f639a095a71ea051b71b1e6b652025aaa4752bd7031524ce8b20fd7435" [label="docker-image://docker.io/library/python:2-alpine3.8" shape="ellipse"];
  "sha256:b3186e7cd4e2b44b755be2eca097bd46a7f56291831c27eda56bcabf7ea1d29b" [label="mkdir{path=/home/app}" shape="note"];
  "sha256:ece69a44a78e9064954ced83006ddd21453bf24b97f0f2fc4f2491c4b5a7eb2a" [label="/bin/sh -c adduser -h ${SERVICE_HOME} -s /sbin/nologin -u 1000 -D ${SERVICE_USER} &&   pip install yamllint" shape="box"];
  "sha256:24e84eb27eae7797a9494c5d020f8627b653f1cb74eaed118d89cb62241006d5" [label="sha256:24e84eb27eae7797a9494c5d020f8627b653f1cb74eaed118d89cb62241006d5" shape="plaintext"];
  "sha256:064743f639a095a71ea051b71b1e6b652025aaa4752bd7031524ce8b20fd7435" -> "sha256:b3186e7cd4e2b44b755be2eca097bd46a7f56291831c27eda56bcabf7ea1d29b" [label=""];
  "sha256:b3186e7cd4e2b44b755be2eca097bd46a7f56291831c27eda56bcabf7ea1d29b" -> "sha256:ece69a44a78e9064954ced83006ddd21453bf24b97f0f2fc4f2491c4b5a7eb2a" [label=""];
  "sha256:ece69a44a78e9064954ced83006ddd21453bf24b97f0f2fc4f2491c4b5a7eb2a" -> "sha256:24e84eb27eae7797a9494c5d020f8627b653f1cb74eaed118d89cb62241006d5" [label=""];
}

