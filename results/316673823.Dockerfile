[app/sources/316673823.Dockerfile]
digraph {
  "sha256:05cd98d905e8f9975fea0e84908918636c9d50a593dc495ffcea28d29a1131f2" [label="docker-image://docker.io/openshift/origin-release:golang-1.9" shape="ellipse"];
  "sha256:bb11be884b734d42cd6e222ac23bbc637a02a41b37bb1a3e1ae01c33f0727095" [label="/bin/sh -c GOBIN=/usr/bin go get github.com/mfojtik/k8s-trigger-controller" shape="box"];
  "sha256:9bec97ddfe414bd7f796b05796aae30a8ac2728cb2df2cc150269e351e889c1a" [label="sha256:9bec97ddfe414bd7f796b05796aae30a8ac2728cb2df2cc150269e351e889c1a" shape="plaintext"];
  "sha256:05cd98d905e8f9975fea0e84908918636c9d50a593dc495ffcea28d29a1131f2" -> "sha256:bb11be884b734d42cd6e222ac23bbc637a02a41b37bb1a3e1ae01c33f0727095" [label=""];
  "sha256:bb11be884b734d42cd6e222ac23bbc637a02a41b37bb1a3e1ae01c33f0727095" -> "sha256:9bec97ddfe414bd7f796b05796aae30a8ac2728cb2df2cc150269e351e889c1a" [label=""];
}

