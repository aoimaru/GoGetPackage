[app/sources/252773719.Dockerfile]
digraph {
  "sha256:23ed941eccb2797c93571a5da3ac30c93d9d78d9967fc6e3efd7bb7d20ff97a2" [label="local://context" shape="ellipse"];
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" [label="docker-image://docker.io/library/python:2-alpine" shape="ellipse"];
  "sha256:12be9603d5fbfcb738ef29df8a4f740f3e1a6138868412bffe8919460754fa46" [label="/bin/sh -c mkdir -p /app && apk add --update bc iproute2" shape="box"];
  "sha256:f2908ae64096c5529814b64782e7c49bb4c365e30759a5ca2aee56e796753be5" [label="mkdir{path=/app}" shape="note"];
  "sha256:1c99e12b86566dadf6940aa4cd6458fec7b0b9c2ef892f8030f99df7feed33f1" [label="copy{src=/gremlins, dest=/app/gremlins}" shape="note"];
  "sha256:602dbd4653d8cbe355489c66361c2e267cbbb1e612a1c8bbf78d459a81c21e6f" [label="copy{src=/setup.py, dest=/app/setup.py}" shape="note"];
  "sha256:4a079f7bafff7ec2c51a13fc6db3e18f65b5c276978d272c9b61c2889c5de4bb" [label="/bin/sh -c python setup.py develop" shape="box"];
  "sha256:963d3df4edcd323e2a43789942490f78e0f3290d642bd2aa1409dfe58051c7ee" [label="copy{src=/entrypoint.sh, dest=/app/entrypoint.sh}" shape="note"];
  "sha256:3c8525e4cf3db0cdf2bc5beb61f77b29873f59a3f8020de30a14b88a4c18826c" [label="copy{src=/profile.tmpl, dest=/app/profile.tmpl}" shape="note"];
  "sha256:1d075fa4d590516507badb0e81389d73b7eac0ac875aed8099147a13f68bf709" [label="sha256:1d075fa4d590516507badb0e81389d73b7eac0ac875aed8099147a13f68bf709" shape="plaintext"];
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" -> "sha256:12be9603d5fbfcb738ef29df8a4f740f3e1a6138868412bffe8919460754fa46" [label=""];
  "sha256:12be9603d5fbfcb738ef29df8a4f740f3e1a6138868412bffe8919460754fa46" -> "sha256:f2908ae64096c5529814b64782e7c49bb4c365e30759a5ca2aee56e796753be5" [label=""];
  "sha256:f2908ae64096c5529814b64782e7c49bb4c365e30759a5ca2aee56e796753be5" -> "sha256:1c99e12b86566dadf6940aa4cd6458fec7b0b9c2ef892f8030f99df7feed33f1" [label=""];
  "sha256:23ed941eccb2797c93571a5da3ac30c93d9d78d9967fc6e3efd7bb7d20ff97a2" -> "sha256:1c99e12b86566dadf6940aa4cd6458fec7b0b9c2ef892f8030f99df7feed33f1" [label=""];
  "sha256:1c99e12b86566dadf6940aa4cd6458fec7b0b9c2ef892f8030f99df7feed33f1" -> "sha256:602dbd4653d8cbe355489c66361c2e267cbbb1e612a1c8bbf78d459a81c21e6f" [label=""];
  "sha256:23ed941eccb2797c93571a5da3ac30c93d9d78d9967fc6e3efd7bb7d20ff97a2" -> "sha256:602dbd4653d8cbe355489c66361c2e267cbbb1e612a1c8bbf78d459a81c21e6f" [label=""];
  "sha256:602dbd4653d8cbe355489c66361c2e267cbbb1e612a1c8bbf78d459a81c21e6f" -> "sha256:4a079f7bafff7ec2c51a13fc6db3e18f65b5c276978d272c9b61c2889c5de4bb" [label=""];
  "sha256:4a079f7bafff7ec2c51a13fc6db3e18f65b5c276978d272c9b61c2889c5de4bb" -> "sha256:963d3df4edcd323e2a43789942490f78e0f3290d642bd2aa1409dfe58051c7ee" [label=""];
  "sha256:23ed941eccb2797c93571a5da3ac30c93d9d78d9967fc6e3efd7bb7d20ff97a2" -> "sha256:963d3df4edcd323e2a43789942490f78e0f3290d642bd2aa1409dfe58051c7ee" [label=""];
  "sha256:963d3df4edcd323e2a43789942490f78e0f3290d642bd2aa1409dfe58051c7ee" -> "sha256:3c8525e4cf3db0cdf2bc5beb61f77b29873f59a3f8020de30a14b88a4c18826c" [label=""];
  "sha256:23ed941eccb2797c93571a5da3ac30c93d9d78d9967fc6e3efd7bb7d20ff97a2" -> "sha256:3c8525e4cf3db0cdf2bc5beb61f77b29873f59a3f8020de30a14b88a4c18826c" [label=""];
  "sha256:3c8525e4cf3db0cdf2bc5beb61f77b29873f59a3f8020de30a14b88a4c18826c" -> "sha256:1d075fa4d590516507badb0e81389d73b7eac0ac875aed8099147a13f68bf709" [label=""];
}

