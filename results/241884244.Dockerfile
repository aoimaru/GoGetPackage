[app/sources/241884244.Dockerfile]
digraph {
  "sha256:f0e24a6846a96183b4e26b4ce23208e65764bb0bece40c719dfb35c78c2c9727" [label="local://context" shape="ellipse"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:252723492e0b71b131006eba8c338660910ecc902a6e2f547c55d3f24eeb3d57" [label="copy{src=/src/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:2a3ffed850ec7ef05b8573f3419c23535221d90280f43fb6354e97aa0390b40b" [label="/bin/sh -c pip3 install -r /requirements.txt" shape="box"];
  "sha256:e7e8bbcb17340e60776f48b6ad6e8100d710d103c0e264e225edfebf3996b064" [label="copy{src=/src, dest=/app}" shape="note"];
  "sha256:48d632b569ccddcb4f59143ffc9c5471aae2e7c390b1a5aee870b78732a6c48c" [label="sha256:48d632b569ccddcb4f59143ffc9c5471aae2e7c390b1a5aee870b78732a6c48c" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:252723492e0b71b131006eba8c338660910ecc902a6e2f547c55d3f24eeb3d57" [label=""];
  "sha256:f0e24a6846a96183b4e26b4ce23208e65764bb0bece40c719dfb35c78c2c9727" -> "sha256:252723492e0b71b131006eba8c338660910ecc902a6e2f547c55d3f24eeb3d57" [label=""];
  "sha256:252723492e0b71b131006eba8c338660910ecc902a6e2f547c55d3f24eeb3d57" -> "sha256:2a3ffed850ec7ef05b8573f3419c23535221d90280f43fb6354e97aa0390b40b" [label=""];
  "sha256:2a3ffed850ec7ef05b8573f3419c23535221d90280f43fb6354e97aa0390b40b" -> "sha256:e7e8bbcb17340e60776f48b6ad6e8100d710d103c0e264e225edfebf3996b064" [label=""];
  "sha256:f0e24a6846a96183b4e26b4ce23208e65764bb0bece40c719dfb35c78c2c9727" -> "sha256:e7e8bbcb17340e60776f48b6ad6e8100d710d103c0e264e225edfebf3996b064" [label=""];
  "sha256:e7e8bbcb17340e60776f48b6ad6e8100d710d103c0e264e225edfebf3996b064" -> "sha256:48d632b569ccddcb4f59143ffc9c5471aae2e7c390b1a5aee870b78732a6c48c" [label=""];
}

