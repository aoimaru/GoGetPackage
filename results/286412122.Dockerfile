[app/sources/286412122.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:033f781922836764ecff7f96b7119a22a43735e9ab5845349f96ee07bb681f83" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:3a85e1119e1f1b1f9507c536262d5ba5c38736ad429dc1f61729d94d8247a71f" [label="mkdir{path=/go/src/github.com/bitnami-labs/helm-crd}" shape="note"];
  "sha256:3ab258ef1b9035cf6a9318d9b9253c0ea6034f07723be2ae8fd4bf9cad8235db" [label="local://context" shape="ellipse"];
  "sha256:d8ba2b1cadf7ef76f44c9d4fd083a2495c709af8cc3297bf66d9e9ff8c75d5ba" [label="copy{src=/, dest=/go/src/github.com/bitnami-labs/helm-crd/}" shape="note"];
  "sha256:eb866ef1e3562b21ff5543bf4813ced5ff46c836da5ae16fb9a574753b83f2bc" [label="/bin/sh -c make controller-static" shape="box"];
  "sha256:9802958012b11e6aa120a61aa9a63c058b05ff85ca51c3126e9ca9565e79c1e2" [label="copy{src=/go/src/github.com/bitnami-labs/helm-crd/controller-static, dest=/controller}" shape="note"];
  "sha256:3add5e308fb74adfbcd7d638a460bb4772a0944b2e25d607bb546d151e050b05" [label="sha256:3add5e308fb74adfbcd7d638a460bb4772a0944b2e25d607bb546d151e050b05" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:033f781922836764ecff7f96b7119a22a43735e9ab5845349f96ee07bb681f83" [label=""];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:3a85e1119e1f1b1f9507c536262d5ba5c38736ad429dc1f61729d94d8247a71f" [label=""];
  "sha256:3a85e1119e1f1b1f9507c536262d5ba5c38736ad429dc1f61729d94d8247a71f" -> "sha256:d8ba2b1cadf7ef76f44c9d4fd083a2495c709af8cc3297bf66d9e9ff8c75d5ba" [label=""];
  "sha256:3ab258ef1b9035cf6a9318d9b9253c0ea6034f07723be2ae8fd4bf9cad8235db" -> "sha256:d8ba2b1cadf7ef76f44c9d4fd083a2495c709af8cc3297bf66d9e9ff8c75d5ba" [label=""];
  "sha256:d8ba2b1cadf7ef76f44c9d4fd083a2495c709af8cc3297bf66d9e9ff8c75d5ba" -> "sha256:eb866ef1e3562b21ff5543bf4813ced5ff46c836da5ae16fb9a574753b83f2bc" [label=""];
  "sha256:033f781922836764ecff7f96b7119a22a43735e9ab5845349f96ee07bb681f83" -> "sha256:9802958012b11e6aa120a61aa9a63c058b05ff85ca51c3126e9ca9565e79c1e2" [label=""];
  "sha256:eb866ef1e3562b21ff5543bf4813ced5ff46c836da5ae16fb9a574753b83f2bc" -> "sha256:9802958012b11e6aa120a61aa9a63c058b05ff85ca51c3126e9ca9565e79c1e2" [label=""];
  "sha256:9802958012b11e6aa120a61aa9a63c058b05ff85ca51c3126e9ca9565e79c1e2" -> "sha256:3add5e308fb74adfbcd7d638a460bb4772a0944b2e25d607bb546d151e050b05" [label=""];
}

