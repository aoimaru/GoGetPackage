[app/sources/404407616.Dockerfile]
digraph {
  "sha256:343ad831b1e36f5cafca62446f66437190dd50585ef74d56f9979df1992926b6" [label="docker-image://docker.io/vitess/k8s@sha256:d95bdaf38c5cd0cc12e949d26fff43463fe0bc324c1c4b8520b1286bc1429151" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:b299c01a4236733e2040bccc8c0b389390abf211dee349e776d073e0faa9ddfe" [label="/bin/sh -c mkdir -p /vt/bin && mkdir -p /vtdataroot" shape="box"];
  "sha256:4cd68393ea126ff3f65af9890b643b52478989fcc95c6f014bfaf6f710b81ec3" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:efde7237a8c167f79de6c347b68a83d04f4b0d84d7bd7767b50d3d148d76f267" [label="copy{src=/vt/bin/vtgate, dest=/vt/bin/}" shape="note"];
  "sha256:6d9ce0d7479c4653be3e06b58638d2b7a276820020f0b9265d1de02fd5771aa3" [label="/bin/sh -c groupadd -r --gid 2000 vitess &&    useradd -r -g vitess --uid 1000 vitess &&    chown -R vitess:vitess /vt &&    chown -R vitess:vitess /vtdataroot" shape="box"];
  "sha256:e3dbbfbf63a85c06904e834f43735a07f4c8ae21eb2edb817940dd807c3e8745" [label="sha256:e3dbbfbf63a85c06904e834f43735a07f4c8ae21eb2edb817940dd807c3e8745" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:b299c01a4236733e2040bccc8c0b389390abf211dee349e776d073e0faa9ddfe" [label=""];
  "sha256:b299c01a4236733e2040bccc8c0b389390abf211dee349e776d073e0faa9ddfe" -> "sha256:4cd68393ea126ff3f65af9890b643b52478989fcc95c6f014bfaf6f710b81ec3" [label=""];
  "sha256:343ad831b1e36f5cafca62446f66437190dd50585ef74d56f9979df1992926b6" -> "sha256:4cd68393ea126ff3f65af9890b643b52478989fcc95c6f014bfaf6f710b81ec3" [label=""];
  "sha256:4cd68393ea126ff3f65af9890b643b52478989fcc95c6f014bfaf6f710b81ec3" -> "sha256:efde7237a8c167f79de6c347b68a83d04f4b0d84d7bd7767b50d3d148d76f267" [label=""];
  "sha256:343ad831b1e36f5cafca62446f66437190dd50585ef74d56f9979df1992926b6" -> "sha256:efde7237a8c167f79de6c347b68a83d04f4b0d84d7bd7767b50d3d148d76f267" [label=""];
  "sha256:efde7237a8c167f79de6c347b68a83d04f4b0d84d7bd7767b50d3d148d76f267" -> "sha256:6d9ce0d7479c4653be3e06b58638d2b7a276820020f0b9265d1de02fd5771aa3" [label=""];
  "sha256:6d9ce0d7479c4653be3e06b58638d2b7a276820020f0b9265d1de02fd5771aa3" -> "sha256:e3dbbfbf63a85c06904e834f43735a07f4c8ae21eb2edb817940dd807c3e8745" [label=""];
}

