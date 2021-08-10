[app/sources/199358715.Dockerfile]
digraph {
  "sha256:3ad3d82d3692a4ac7e3e12dd6c0f570ee0fb5c08eb7fb4caa20d8aeeaddb0117" [label="docker-image://docker.io/library/node:5" shape="ellipse"];
  "sha256:8f114c1c23ab8d328e16fb0cedb835127374d41a1f0d7123a10c8966fe6e2166" [label="/bin/sh -c npm install -g parse-dashboard@${PARSE_DASHBOARD_VERSION}" shape="box"];
  "sha256:feb7f111983de532dc05eb35e816385ef3cf1f92d8229a21edaea55c3e2ed53f" [label="sha256:feb7f111983de532dc05eb35e816385ef3cf1f92d8229a21edaea55c3e2ed53f" shape="plaintext"];
  "sha256:3ad3d82d3692a4ac7e3e12dd6c0f570ee0fb5c08eb7fb4caa20d8aeeaddb0117" -> "sha256:8f114c1c23ab8d328e16fb0cedb835127374d41a1f0d7123a10c8966fe6e2166" [label=""];
  "sha256:8f114c1c23ab8d328e16fb0cedb835127374d41a1f0d7123a10c8966fe6e2166" -> "sha256:feb7f111983de532dc05eb35e816385ef3cf1f92d8229a21edaea55c3e2ed53f" [label=""];
}

