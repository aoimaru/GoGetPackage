[app/sources/325408340.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:250d08056a0d2644fab96bb3993af35d8a3f3060e148068c9f81a2019ca728e4" [label="local://context" shape="ellipse"];
  "sha256:b27ea6d80f14eab0a6a49930a962335489e03acd6109559b85fb4580ed7db7c9" [label="copy{src=/etcd, dest=/usr/local/bin/}" shape="note"];
  "sha256:8e6be68efad9e20c123b554f41856a7814bbf6ad130876222befd05d64d1cd7c" [label="copy{src=/etcdctl, dest=/usr/local/bin/}" shape="note"];
  "sha256:5a65885f6968dd7ae0a1eed98a6bd8e8a37f1ebc4943f936ba68703e38b77ab1" [label="/bin/sh -c mkdir -p /var/etcd/" shape="box"];
  "sha256:901ef9eda497768289d958d7d2b8f7fa61e1d2865418fbb4fd808432102591cb" [label="/bin/sh -c mkdir -p /var/lib/etcd/" shape="box"];
  "sha256:a9ef575e6c491d9bbf06631c04429a1851ced99555fffc5ea5fcd190108f197b" [label="/bin/sh -c echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf" shape="box"];
  "sha256:9c9b3da0f8649a29d68e3b74e65fd09ec683eb64cd161c829c2f915b24f34e21" [label="sha256:9c9b3da0f8649a29d68e3b74e65fd09ec683eb64cd161c829c2f915b24f34e21" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:b27ea6d80f14eab0a6a49930a962335489e03acd6109559b85fb4580ed7db7c9" [label=""];
  "sha256:250d08056a0d2644fab96bb3993af35d8a3f3060e148068c9f81a2019ca728e4" -> "sha256:b27ea6d80f14eab0a6a49930a962335489e03acd6109559b85fb4580ed7db7c9" [label=""];
  "sha256:b27ea6d80f14eab0a6a49930a962335489e03acd6109559b85fb4580ed7db7c9" -> "sha256:8e6be68efad9e20c123b554f41856a7814bbf6ad130876222befd05d64d1cd7c" [label=""];
  "sha256:250d08056a0d2644fab96bb3993af35d8a3f3060e148068c9f81a2019ca728e4" -> "sha256:8e6be68efad9e20c123b554f41856a7814bbf6ad130876222befd05d64d1cd7c" [label=""];
  "sha256:8e6be68efad9e20c123b554f41856a7814bbf6ad130876222befd05d64d1cd7c" -> "sha256:5a65885f6968dd7ae0a1eed98a6bd8e8a37f1ebc4943f936ba68703e38b77ab1" [label=""];
  "sha256:5a65885f6968dd7ae0a1eed98a6bd8e8a37f1ebc4943f936ba68703e38b77ab1" -> "sha256:901ef9eda497768289d958d7d2b8f7fa61e1d2865418fbb4fd808432102591cb" [label=""];
  "sha256:901ef9eda497768289d958d7d2b8f7fa61e1d2865418fbb4fd808432102591cb" -> "sha256:a9ef575e6c491d9bbf06631c04429a1851ced99555fffc5ea5fcd190108f197b" [label=""];
  "sha256:a9ef575e6c491d9bbf06631c04429a1851ced99555fffc5ea5fcd190108f197b" -> "sha256:9c9b3da0f8649a29d68e3b74e65fd09ec683eb64cd161c829c2f915b24f34e21" [label=""];
}

