[app/sources/354687049.Dockerfile]
digraph {
  "sha256:b80e77e334136417c80d59b28a6c345f9be537f80b96e4e26600404594c1ab2f" [label="docker-image://docker.io/sourcegraph/alpine:3.9@sha256:e9264d4748e16de961a2b973cc12259dee1d33473633beccb1dfb8a0e62c6459" shape="ellipse"];
  "sha256:cbd0d9b7f2c462488d78d6ddbadf14b47901d45cc0dcba465432ea0ef1b5c9e4" [label="local://context" shape="ellipse"];
  "sha256:14adfc17db7d4cd3bea0f992cb8713bcee5f516fadf1c984e5cd72e1e7eff479" [label="copy{src=/repo-updater, dest=/usr/local/bin/}" shape="note"];
  "sha256:11ccf729709f421c87939465e5f6f820be019bfe96c81dc6f79b25f0809e2899" [label="sha256:11ccf729709f421c87939465e5f6f820be019bfe96c81dc6f79b25f0809e2899" shape="plaintext"];
  "sha256:b80e77e334136417c80d59b28a6c345f9be537f80b96e4e26600404594c1ab2f" -> "sha256:14adfc17db7d4cd3bea0f992cb8713bcee5f516fadf1c984e5cd72e1e7eff479" [label=""];
  "sha256:cbd0d9b7f2c462488d78d6ddbadf14b47901d45cc0dcba465432ea0ef1b5c9e4" -> "sha256:14adfc17db7d4cd3bea0f992cb8713bcee5f516fadf1c984e5cd72e1e7eff479" [label=""];
  "sha256:14adfc17db7d4cd3bea0f992cb8713bcee5f516fadf1c984e5cd72e1e7eff479" -> "sha256:11ccf729709f421c87939465e5f6f820be019bfe96c81dc6f79b25f0809e2899" [label=""];
}

