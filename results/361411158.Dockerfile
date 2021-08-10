[app/sources/361411158.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:051b61a77adc6d2bb9c6f33ed8dd8728bd03da0773b7f6dfbe20fb03c1465317" [label="/bin/sh -c apt update; apt install -y procps ca-certificates; apt clean" shape="box"];
  "sha256:28dc84b27d2ea46f337ee8f3a3d1c5e890d0e4eff10144a2ad0d5624fa84098a" [label="mkdir{path=/root}" shape="note"];
  "sha256:c8a0326a7f36bc27ebed9a37b83201583027800126683a18a8facc6a60f92812" [label="/bin/sh -c mkdir /conode_data" shape="box"];
  "sha256:8a81f4be8f019ce881b873003f6d25f47e54eef031b086595760605181d6dae5" [label="/bin/sh -c mkdir -p .local/share .config" shape="box"];
  "sha256:f4c8b15f071c773efd77e7014e4540002717bdfdc29c1e0ed53a6a626cd798a7" [label="/bin/sh -c ln -s /conode_data .local/share/conode" shape="box"];
  "sha256:03d4bbc6b96057b18cb1b743d75f26a55c739c578ca34003e9046e4243303d6a" [label="/bin/sh -c ln -s /conode_data .config/conode" shape="box"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:d154802a315d66653f85d557ef489926d4c0bb51f114a45a5fc8ef53f57fbe5d" [label="/bin/sh -c go get go.dedis.ch/cothority" shape="box"];
  "sha256:4225bac9b7eab60bf2b7942cbb89e7733c4d001080dc15ed9a5fc49db88cb86f" [label="/bin/sh -c cd /go/src/go.dedis.ch/cothority && git checkout $BUILD_TAG && GO111MODULE=on go install -ldflags=\"$ldflags\" ./conode ./byzcoin/bcadmin ./eventlog/el ./scmgr" shape="box"];
  "sha256:6431d91fb0029808bf1df9412682616b892ea9b62fa777ba56cc9e24d29d629e" [label="copy{src=/go/bin/conode, dest=/root/}" shape="note"];
  "sha256:42914f7ee86ed6b778311c822a85f412df6774ee90c597dfc81feb21bd2b57be" [label="copy{src=/go/bin/bcadmin, dest=/usr/local/bin/},copy{src=/go/bin/el, dest=/usr/local/bin/},copy{src=/go/bin/scmgr, dest=/usr/local/bin/}" shape="note"];
  "sha256:aa38947dbdb8ddbae042df81686647108e45ab8fb06cab9bc486f0365030bdcd" [label="sha256:aa38947dbdb8ddbae042df81686647108e45ab8fb06cab9bc486f0365030bdcd" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:051b61a77adc6d2bb9c6f33ed8dd8728bd03da0773b7f6dfbe20fb03c1465317" [label=""];
  "sha256:051b61a77adc6d2bb9c6f33ed8dd8728bd03da0773b7f6dfbe20fb03c1465317" -> "sha256:28dc84b27d2ea46f337ee8f3a3d1c5e890d0e4eff10144a2ad0d5624fa84098a" [label=""];
  "sha256:28dc84b27d2ea46f337ee8f3a3d1c5e890d0e4eff10144a2ad0d5624fa84098a" -> "sha256:c8a0326a7f36bc27ebed9a37b83201583027800126683a18a8facc6a60f92812" [label=""];
  "sha256:c8a0326a7f36bc27ebed9a37b83201583027800126683a18a8facc6a60f92812" -> "sha256:8a81f4be8f019ce881b873003f6d25f47e54eef031b086595760605181d6dae5" [label=""];
  "sha256:8a81f4be8f019ce881b873003f6d25f47e54eef031b086595760605181d6dae5" -> "sha256:f4c8b15f071c773efd77e7014e4540002717bdfdc29c1e0ed53a6a626cd798a7" [label=""];
  "sha256:f4c8b15f071c773efd77e7014e4540002717bdfdc29c1e0ed53a6a626cd798a7" -> "sha256:03d4bbc6b96057b18cb1b743d75f26a55c739c578ca34003e9046e4243303d6a" [label=""];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:d154802a315d66653f85d557ef489926d4c0bb51f114a45a5fc8ef53f57fbe5d" [label=""];
  "sha256:d154802a315d66653f85d557ef489926d4c0bb51f114a45a5fc8ef53f57fbe5d" -> "sha256:4225bac9b7eab60bf2b7942cbb89e7733c4d001080dc15ed9a5fc49db88cb86f" [label=""];
  "sha256:03d4bbc6b96057b18cb1b743d75f26a55c739c578ca34003e9046e4243303d6a" -> "sha256:6431d91fb0029808bf1df9412682616b892ea9b62fa777ba56cc9e24d29d629e" [label=""];
  "sha256:4225bac9b7eab60bf2b7942cbb89e7733c4d001080dc15ed9a5fc49db88cb86f" -> "sha256:6431d91fb0029808bf1df9412682616b892ea9b62fa777ba56cc9e24d29d629e" [label=""];
  "sha256:6431d91fb0029808bf1df9412682616b892ea9b62fa777ba56cc9e24d29d629e" -> "sha256:42914f7ee86ed6b778311c822a85f412df6774ee90c597dfc81feb21bd2b57be" [label=""];
  "sha256:4225bac9b7eab60bf2b7942cbb89e7733c4d001080dc15ed9a5fc49db88cb86f" -> "sha256:42914f7ee86ed6b778311c822a85f412df6774ee90c597dfc81feb21bd2b57be" [label=""];
  "sha256:42914f7ee86ed6b778311c822a85f412df6774ee90c597dfc81feb21bd2b57be" -> "sha256:aa38947dbdb8ddbae042df81686647108e45ab8fb06cab9bc486f0365030bdcd" [label=""];
}

