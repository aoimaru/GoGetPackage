[app/sources/368540903.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:bec600a807f948585ed2ff674f0910dccbe6a5c0cacc657afe25f3e74754b41f" [label="local://context" shape="ellipse"];
  "sha256:8a72643098a89cc961239ed5191f273510cb95811f6500c9644cea3d54730b16" [label="copy{src=/sources/clang-deps.list, dest=/etc/apt/sources.list.d/}" shape="note"];
  "sha256:f41412a57f0fb37f98f13495df47c46b628a5bcc95f4decc705a21965c018710" [label="copy{src=/scripts/install-apt-deps.sh, dest=/scripts/}" shape="note"];
  "sha256:20d91eee2950d4c33c647fac8de51930fea2588d896e91610aba9e1eb5d99943" [label="/bin/sh -c /scripts/install-apt-deps.sh" shape="box"];
  "sha256:9a3d512270893c59e41db11063b28b2dff23e00ed972a7a5b06668814918a3d8" [label="copy{src=/scripts/build-go-builder.sh, dest=/scripts/}" shape="note"];
  "sha256:58c3e1c968ef95f87e92939fd989e438fc36ec2524e0f8c0d1be8caa3a3af961" [label="/bin/sh -c GO_REV=073fc578434b BUILDER_REV=8845ca94a310 /scripts/build-go-builder.sh && test -f /usr/local/bin/builder" shape="box"];
  "sha256:fe697107b135f9286ef13df9bebc1a2a5818ed6deb83e7039e0b5c9d5cb63611" [label="sha256:fe697107b135f9286ef13df9bebc1a2a5818ed6deb83e7039e0b5c9d5cb63611" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:8a72643098a89cc961239ed5191f273510cb95811f6500c9644cea3d54730b16" [label=""];
  "sha256:bec600a807f948585ed2ff674f0910dccbe6a5c0cacc657afe25f3e74754b41f" -> "sha256:8a72643098a89cc961239ed5191f273510cb95811f6500c9644cea3d54730b16" [label=""];
  "sha256:8a72643098a89cc961239ed5191f273510cb95811f6500c9644cea3d54730b16" -> "sha256:f41412a57f0fb37f98f13495df47c46b628a5bcc95f4decc705a21965c018710" [label=""];
  "sha256:bec600a807f948585ed2ff674f0910dccbe6a5c0cacc657afe25f3e74754b41f" -> "sha256:f41412a57f0fb37f98f13495df47c46b628a5bcc95f4decc705a21965c018710" [label=""];
  "sha256:f41412a57f0fb37f98f13495df47c46b628a5bcc95f4decc705a21965c018710" -> "sha256:20d91eee2950d4c33c647fac8de51930fea2588d896e91610aba9e1eb5d99943" [label=""];
  "sha256:20d91eee2950d4c33c647fac8de51930fea2588d896e91610aba9e1eb5d99943" -> "sha256:9a3d512270893c59e41db11063b28b2dff23e00ed972a7a5b06668814918a3d8" [label=""];
  "sha256:bec600a807f948585ed2ff674f0910dccbe6a5c0cacc657afe25f3e74754b41f" -> "sha256:9a3d512270893c59e41db11063b28b2dff23e00ed972a7a5b06668814918a3d8" [label=""];
  "sha256:9a3d512270893c59e41db11063b28b2dff23e00ed972a7a5b06668814918a3d8" -> "sha256:58c3e1c968ef95f87e92939fd989e438fc36ec2524e0f8c0d1be8caa3a3af961" [label=""];
  "sha256:58c3e1c968ef95f87e92939fd989e438fc36ec2524e0f8c0d1be8caa3a3af961" -> "sha256:fe697107b135f9286ef13df9bebc1a2a5818ed6deb83e7039e0b5c9d5cb63611" [label=""];
}

