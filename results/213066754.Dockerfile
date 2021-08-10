[app/sources/213066754.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:367bccd2acbde54e79ee28bf1fc535b7cfcf9bd7cc55da24cfb6a8bf1d7d08be" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:9dcd2d02e39e122650bb377572efa0823d5272eaabfe15d02e9ac0133401d121" [label="/bin/sh -c pip install taxadb" shape="box"];
  "sha256:2b60aa739a2f450998156537d8211dd710c8b3e2f0b9fae66a5c72b7530c14aa" [label="sha256:2b60aa739a2f450998156537d8211dd710c8b3e2f0b9fae66a5c72b7530c14aa" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:367bccd2acbde54e79ee28bf1fc535b7cfcf9bd7cc55da24cfb6a8bf1d7d08be" [label=""];
  "sha256:367bccd2acbde54e79ee28bf1fc535b7cfcf9bd7cc55da24cfb6a8bf1d7d08be" -> "sha256:9dcd2d02e39e122650bb377572efa0823d5272eaabfe15d02e9ac0133401d121" [label=""];
  "sha256:9dcd2d02e39e122650bb377572efa0823d5272eaabfe15d02e9ac0133401d121" -> "sha256:2b60aa739a2f450998156537d8211dd710c8b3e2f0b9fae66a5c72b7530c14aa" [label=""];
}

