[app/sources/423555278.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:5ef4859a192522275f71756a4294ff7f46d924638f9e3e027cceee13aa5b2bdd" [label="local://context" shape="ellipse"];
  "sha256:d5c91699905c59d8ca980085c42a45bfedb98587ff778a4243448564038ee8e2" [label="copy{src=/etcdctl, dest=/},copy{src=/etcd-empty-dir-cleanup.sh, dest=/}" shape="note"];
  "sha256:34f4a3545117fe223ed0d2d7c4451e3de2f7f8ac218e76b3cb755b6313b81ed0" [label="/bin/sh -c chmod a+rx /etcdctl /etcd-empty-dir-cleanup.sh" shape="box"];
  "sha256:ac1d329808d05f960631774f46a5eb62275b591cdfdb815f78309b33b054aa25" [label="sha256:ac1d329808d05f960631774f46a5eb62275b591cdfdb815f78309b33b054aa25" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:d5c91699905c59d8ca980085c42a45bfedb98587ff778a4243448564038ee8e2" [label=""];
  "sha256:5ef4859a192522275f71756a4294ff7f46d924638f9e3e027cceee13aa5b2bdd" -> "sha256:d5c91699905c59d8ca980085c42a45bfedb98587ff778a4243448564038ee8e2" [label=""];
  "sha256:d5c91699905c59d8ca980085c42a45bfedb98587ff778a4243448564038ee8e2" -> "sha256:34f4a3545117fe223ed0d2d7c4451e3de2f7f8ac218e76b3cb755b6313b81ed0" [label=""];
  "sha256:34f4a3545117fe223ed0d2d7c4451e3de2f7f8ac218e76b3cb755b6313b81ed0" -> "sha256:ac1d329808d05f960631774f46a5eb62275b591cdfdb815f78309b33b054aa25" [label=""];
}

