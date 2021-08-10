[app/sources/273303010.Dockerfile]
digraph {
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:2578c712557d0a8631732f6508ba4bc07845c8566d8d407746b0d8bd49677078" [label="/bin/sh -c apk --update add bash gzip make docker nodejs nodejs-npm rsync git && \tgo get -u github.com/aktau/github-release && \tgo get -u github.com/jteeuwen/go-bindata/..." shape="box"];
  "sha256:2b999109a070c1f36487a8b19aa62a4d2c1c0436f72b4773f750469ce169f8c3" [label="mkdir{path=/go/src/github.com/titpetric/pendulum}" shape="note"];
  "sha256:8cd61ab975b25fe2f5e7adb94ff90b559621c28d5fdb5f294249ac5c5db1ad63" [label="sha256:8cd61ab975b25fe2f5e7adb94ff90b559621c28d5fdb5f294249ac5c5db1ad63" shape="plaintext"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:2578c712557d0a8631732f6508ba4bc07845c8566d8d407746b0d8bd49677078" [label=""];
  "sha256:2578c712557d0a8631732f6508ba4bc07845c8566d8d407746b0d8bd49677078" -> "sha256:2b999109a070c1f36487a8b19aa62a4d2c1c0436f72b4773f750469ce169f8c3" [label=""];
  "sha256:2b999109a070c1f36487a8b19aa62a4d2c1c0436f72b4773f750469ce169f8c3" -> "sha256:8cd61ab975b25fe2f5e7adb94ff90b559621c28d5fdb5f294249ac5c5db1ad63" [label=""];
}

