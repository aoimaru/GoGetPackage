[app/sources/241292226.Dockerfile]
digraph {
  "sha256:bab0dfceec34af3484bfd497022499cb974c79f3a779c10fecb29f9850c83f27" [label="docker-image://docker.io/cusspvz/node:7.0.0" shape="ellipse"];
  "sha256:9479ab5c8dd96877d8ce0cee3f411cacf6ad33a817317b41182aac5942b625db" [label="local://context" shape="ellipse"];
  "sha256:025b946f3cd1dc022d28b5f35f3ce8f34e321904eecc200ee4fba13247d0729e" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:abc66c6b60f74cab6bf7685891c921965761ba673e1aff2bd156debd98cf1e78" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:74a13479eb8c2c6f3a6441381c702b9a90428c3d5edfd260134f6b8a8e0b9ac7" [label="copy{src=/build/node, dest=/app/build/node}" shape="note"];
  "sha256:6934f96f1ff6cd3c8d8012beb23afaef87b4cca544091a40d4c7c355c49de77b" [label="copy{src=/build/browser, dest=/app/build/browser}" shape="note"];
  "sha256:46c3e8d910e31f69e437701ad74da7b44cd2227bd9a55b70aeabb7102e58dd30" [label="sha256:46c3e8d910e31f69e437701ad74da7b44cd2227bd9a55b70aeabb7102e58dd30" shape="plaintext"];
  "sha256:bab0dfceec34af3484bfd497022499cb974c79f3a779c10fecb29f9850c83f27" -> "sha256:025b946f3cd1dc022d28b5f35f3ce8f34e321904eecc200ee4fba13247d0729e" [label=""];
  "sha256:9479ab5c8dd96877d8ce0cee3f411cacf6ad33a817317b41182aac5942b625db" -> "sha256:025b946f3cd1dc022d28b5f35f3ce8f34e321904eecc200ee4fba13247d0729e" [label=""];
  "sha256:025b946f3cd1dc022d28b5f35f3ce8f34e321904eecc200ee4fba13247d0729e" -> "sha256:abc66c6b60f74cab6bf7685891c921965761ba673e1aff2bd156debd98cf1e78" [label=""];
  "sha256:abc66c6b60f74cab6bf7685891c921965761ba673e1aff2bd156debd98cf1e78" -> "sha256:74a13479eb8c2c6f3a6441381c702b9a90428c3d5edfd260134f6b8a8e0b9ac7" [label=""];
  "sha256:9479ab5c8dd96877d8ce0cee3f411cacf6ad33a817317b41182aac5942b625db" -> "sha256:74a13479eb8c2c6f3a6441381c702b9a90428c3d5edfd260134f6b8a8e0b9ac7" [label=""];
  "sha256:74a13479eb8c2c6f3a6441381c702b9a90428c3d5edfd260134f6b8a8e0b9ac7" -> "sha256:6934f96f1ff6cd3c8d8012beb23afaef87b4cca544091a40d4c7c355c49de77b" [label=""];
  "sha256:9479ab5c8dd96877d8ce0cee3f411cacf6ad33a817317b41182aac5942b625db" -> "sha256:6934f96f1ff6cd3c8d8012beb23afaef87b4cca544091a40d4c7c355c49de77b" [label=""];
  "sha256:6934f96f1ff6cd3c8d8012beb23afaef87b4cca544091a40d4c7c355c49de77b" -> "sha256:46c3e8d910e31f69e437701ad74da7b44cd2227bd9a55b70aeabb7102e58dd30" [label=""];
}

