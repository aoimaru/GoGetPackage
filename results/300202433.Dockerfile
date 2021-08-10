[app/sources/300202433.Dockerfile]
digraph {
  "sha256:0c615bb9c170293b0c25fc77c9a5964fe299ca7ddab0fb5f1d6046807d1d104f" [label="docker-image://docker.io/library/pypy:3-slim" shape="ellipse"];
  "sha256:99ee0ca0d58a45323f15f9c6d0d3a4a9fcfaf0029b50cad314d9183e178a63fe" [label="local://context" shape="ellipse"];
  "sha256:2e928fc809b47cbad8af2bec841cd4dc1b4c428c8b1e864f7dbed47a16caf869" [label="copy{src=/portredirector.py, dest=/opt/}" shape="note"];
  "sha256:16bcae41c1ac71788fb61f63bb6e4194a40a7f886df204b90e1b7a74b8ed2469" [label="copy{src=/docker_entry.sh, dest=/opt/}" shape="note"];
  "sha256:30b1fb775e3c2b61e1c7d33465fce21bb90c000474ac877bca30440ea63fd0f1" [label="/bin/sh -c apt-get update && apt-get install -y iptables     && ln -s /usr/local/bin/pypy3 /usr/local/bin/python3     && pip3 install async_timeout     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2b73ea7481fc1df2fa28d749b573c76382e2f0b69c294d7b1c147a7e5a711684" [label="mkdir{path=/opt}" shape="note"];
  "sha256:b1ddc3d73874bc82593971320a19b8db157357a93d5653665f76f18b65ddf06c" [label="sha256:b1ddc3d73874bc82593971320a19b8db157357a93d5653665f76f18b65ddf06c" shape="plaintext"];
  "sha256:0c615bb9c170293b0c25fc77c9a5964fe299ca7ddab0fb5f1d6046807d1d104f" -> "sha256:2e928fc809b47cbad8af2bec841cd4dc1b4c428c8b1e864f7dbed47a16caf869" [label=""];
  "sha256:99ee0ca0d58a45323f15f9c6d0d3a4a9fcfaf0029b50cad314d9183e178a63fe" -> "sha256:2e928fc809b47cbad8af2bec841cd4dc1b4c428c8b1e864f7dbed47a16caf869" [label=""];
  "sha256:2e928fc809b47cbad8af2bec841cd4dc1b4c428c8b1e864f7dbed47a16caf869" -> "sha256:16bcae41c1ac71788fb61f63bb6e4194a40a7f886df204b90e1b7a74b8ed2469" [label=""];
  "sha256:99ee0ca0d58a45323f15f9c6d0d3a4a9fcfaf0029b50cad314d9183e178a63fe" -> "sha256:16bcae41c1ac71788fb61f63bb6e4194a40a7f886df204b90e1b7a74b8ed2469" [label=""];
  "sha256:16bcae41c1ac71788fb61f63bb6e4194a40a7f886df204b90e1b7a74b8ed2469" -> "sha256:30b1fb775e3c2b61e1c7d33465fce21bb90c000474ac877bca30440ea63fd0f1" [label=""];
  "sha256:30b1fb775e3c2b61e1c7d33465fce21bb90c000474ac877bca30440ea63fd0f1" -> "sha256:2b73ea7481fc1df2fa28d749b573c76382e2f0b69c294d7b1c147a7e5a711684" [label=""];
  "sha256:2b73ea7481fc1df2fa28d749b573c76382e2f0b69c294d7b1c147a7e5a711684" -> "sha256:b1ddc3d73874bc82593971320a19b8db157357a93d5653665f76f18b65ddf06c" [label=""];
}

