[app/sources/330733825.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:a597725c7bc567f1cb5a6e7e69d82680dcdc995dfd98a2e0217a531f1c5e6280" [label="local://context" shape="ellipse"];
  "sha256:d413fec34ae7f7a09ebcb58afad385db6737a8d74acab9883fc318925ea351a2" [label="copy{src=/etcdctl, dest=/},copy{src=/etcd-empty-dir-cleanup.sh, dest=/}" shape="note"];
  "sha256:04ca7f06f243993929dea90e6bbfe4c34b67882e0816298998b0801afbfb47d8" [label="/bin/sh -c chmod a+rx /etcdctl /etcd-empty-dir-cleanup.sh" shape="box"];
  "sha256:068ce6a8cc76fe54f72aa211d9ec7d2c48ed508014967bfdf57989561e70400d" [label="sha256:068ce6a8cc76fe54f72aa211d9ec7d2c48ed508014967bfdf57989561e70400d" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:d413fec34ae7f7a09ebcb58afad385db6737a8d74acab9883fc318925ea351a2" [label=""];
  "sha256:a597725c7bc567f1cb5a6e7e69d82680dcdc995dfd98a2e0217a531f1c5e6280" -> "sha256:d413fec34ae7f7a09ebcb58afad385db6737a8d74acab9883fc318925ea351a2" [label=""];
  "sha256:d413fec34ae7f7a09ebcb58afad385db6737a8d74acab9883fc318925ea351a2" -> "sha256:04ca7f06f243993929dea90e6bbfe4c34b67882e0816298998b0801afbfb47d8" [label=""];
  "sha256:04ca7f06f243993929dea90e6bbfe4c34b67882e0816298998b0801afbfb47d8" -> "sha256:068ce6a8cc76fe54f72aa211d9ec7d2c48ed508014967bfdf57989561e70400d" [label=""];
}

