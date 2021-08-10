[app/sources/450110127.Dockerfile]
digraph {
  "sha256:0e1464c866b0ab0f49d21587cabdca034309344ec82fbbfa8eed627a0b3d2266" [label="docker-image://docker.io/centos/kubernetes-sig-master:latest" shape="ellipse"];
  "sha256:8646fdc5a4b459a9e088800e6b40bbc8de64eec9ef00f61e62e1652decac20a4" [label="local://context" shape="ellipse"];
  "sha256:6b8d020f94300206aa267e6782942af7eb16df2e2f9bea80aa2415022dfa1925" [label="copy{src=/launch.sh, dest=/usr/bin/kube-scheduler-docker.sh}" shape="note"];
  "sha256:8916490a8d63811b5e9cedfe7374c3514cb074def23e79d7b8ab00c9273e1f2e" [label="copy{src=/service.template, dest=/exports/},copy{src=/config.json.template, dest=/exports/}" shape="note"];
  "sha256:2baa7407d69f552f419b6e8c48044ea31975a5ad73bbb413024fee5992d7c464" [label="/bin/sh -c mkdir -p /exports/hostfs/etc/kubernetes && cp /etc/kubernetes/{config,scheduler} /exports/hostfs/etc/kubernetes" shape="box"];
  "sha256:0c03bdabb37a5233a38710f068fad87c04d2f7f3564bb7bc85901c4cb5e88c15" [label="sha256:0c03bdabb37a5233a38710f068fad87c04d2f7f3564bb7bc85901c4cb5e88c15" shape="plaintext"];
  "sha256:0e1464c866b0ab0f49d21587cabdca034309344ec82fbbfa8eed627a0b3d2266" -> "sha256:6b8d020f94300206aa267e6782942af7eb16df2e2f9bea80aa2415022dfa1925" [label=""];
  "sha256:8646fdc5a4b459a9e088800e6b40bbc8de64eec9ef00f61e62e1652decac20a4" -> "sha256:6b8d020f94300206aa267e6782942af7eb16df2e2f9bea80aa2415022dfa1925" [label=""];
  "sha256:6b8d020f94300206aa267e6782942af7eb16df2e2f9bea80aa2415022dfa1925" -> "sha256:8916490a8d63811b5e9cedfe7374c3514cb074def23e79d7b8ab00c9273e1f2e" [label=""];
  "sha256:8646fdc5a4b459a9e088800e6b40bbc8de64eec9ef00f61e62e1652decac20a4" -> "sha256:8916490a8d63811b5e9cedfe7374c3514cb074def23e79d7b8ab00c9273e1f2e" [label=""];
  "sha256:8916490a8d63811b5e9cedfe7374c3514cb074def23e79d7b8ab00c9273e1f2e" -> "sha256:2baa7407d69f552f419b6e8c48044ea31975a5ad73bbb413024fee5992d7c464" [label=""];
  "sha256:2baa7407d69f552f419b6e8c48044ea31975a5ad73bbb413024fee5992d7c464" -> "sha256:0c03bdabb37a5233a38710f068fad87c04d2f7f3564bb7bc85901c4cb5e88c15" [label=""];
}

