[app/sources/278853388.Dockerfile]
digraph {
  "sha256:7b3bb812658f6d377b65ab571fa33610226166aa0f5ba7d48c5f91c67b45fe71" [label="docker-image://docker.io/library/node:6.11.4" shape="ellipse"];
  "sha256:8935248ec5d84cdebd54d3e0dd77b71594deccd53c39176425da4e7b72af1b48" [label="local://context" shape="ellipse"];
  "sha256:668cb46a401f023937ced3228385898f45dca58b2108ade71e8e0bca764fd9da" [label="copy{src=/k8sdemo.js, dest=/}" shape="note"];
  "sha256:d4c6e96cfe3e92efa98240a801d180842abecfad4f7ca19d09778db717641b1a" [label="sha256:d4c6e96cfe3e92efa98240a801d180842abecfad4f7ca19d09778db717641b1a" shape="plaintext"];
  "sha256:7b3bb812658f6d377b65ab571fa33610226166aa0f5ba7d48c5f91c67b45fe71" -> "sha256:668cb46a401f023937ced3228385898f45dca58b2108ade71e8e0bca764fd9da" [label=""];
  "sha256:8935248ec5d84cdebd54d3e0dd77b71594deccd53c39176425da4e7b72af1b48" -> "sha256:668cb46a401f023937ced3228385898f45dca58b2108ade71e8e0bca764fd9da" [label=""];
  "sha256:668cb46a401f023937ced3228385898f45dca58b2108ade71e8e0bca764fd9da" -> "sha256:d4c6e96cfe3e92efa98240a801d180842abecfad4f7ca19d09778db717641b1a" [label=""];
}

