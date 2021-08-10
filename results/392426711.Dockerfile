[app/sources/392426711.Dockerfile]
digraph {
  "sha256:c902a104f1c04a3947bd64111cdcadf0f7c926b283964e124d897cc4f387ec6d" [label="local://context" shape="ellipse"];
  "sha256:70c3ade3b6790fd81eeb7eac0b1fef2c1e4f4c0ddaeeb12c0c5e9f789e037527" [label="docker-image://docker.io/library/rust:1.32.0" shape="ellipse"];
  "sha256:1a81e7c1e95f2f40ce297c899f8fd2df793464aac0b398dc9d40a0ebaf136efe" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:bc8f1375b1fc1729cdfb8c40dcea6eec849bbc77ac0b285c6b985d874aa1ae26" [label="/bin/sh -c rustup default nightly" shape="box"];
  "sha256:b293057d80a659bc535679d856adbc5b103145df6aaf8c150a0e3cc83431b733" [label="copy{src=/Cargo.toml, dest=/usr/src/app/}" shape="note"];
  "sha256:2b2cefbac7c7d04ab1d200dd2b12fc744e5a079dafbb9270fa25c978c5ea145b" [label="copy{src=/src, dest=/usr/src/app/src}" shape="note"];
  "sha256:5795b1c8a6ad1f01cbb2f3392c5c766adab63760ccd1a803ee71ad037a028449" [label="/bin/sh -c RUSTFLAGS=\"-C target-cpu=native\" cargo build --release" shape="box"];
  "sha256:98dcba94a1b34721e35a679a51a29636183e6da9739895c4ce6e6872d4ea4eaf" [label="sha256:98dcba94a1b34721e35a679a51a29636183e6da9739895c4ce6e6872d4ea4eaf" shape="plaintext"];
  "sha256:70c3ade3b6790fd81eeb7eac0b1fef2c1e4f4c0ddaeeb12c0c5e9f789e037527" -> "sha256:1a81e7c1e95f2f40ce297c899f8fd2df793464aac0b398dc9d40a0ebaf136efe" [label=""];
  "sha256:1a81e7c1e95f2f40ce297c899f8fd2df793464aac0b398dc9d40a0ebaf136efe" -> "sha256:bc8f1375b1fc1729cdfb8c40dcea6eec849bbc77ac0b285c6b985d874aa1ae26" [label=""];
  "sha256:bc8f1375b1fc1729cdfb8c40dcea6eec849bbc77ac0b285c6b985d874aa1ae26" -> "sha256:b293057d80a659bc535679d856adbc5b103145df6aaf8c150a0e3cc83431b733" [label=""];
  "sha256:c902a104f1c04a3947bd64111cdcadf0f7c926b283964e124d897cc4f387ec6d" -> "sha256:b293057d80a659bc535679d856adbc5b103145df6aaf8c150a0e3cc83431b733" [label=""];
  "sha256:b293057d80a659bc535679d856adbc5b103145df6aaf8c150a0e3cc83431b733" -> "sha256:2b2cefbac7c7d04ab1d200dd2b12fc744e5a079dafbb9270fa25c978c5ea145b" [label=""];
  "sha256:c902a104f1c04a3947bd64111cdcadf0f7c926b283964e124d897cc4f387ec6d" -> "sha256:2b2cefbac7c7d04ab1d200dd2b12fc744e5a079dafbb9270fa25c978c5ea145b" [label=""];
  "sha256:2b2cefbac7c7d04ab1d200dd2b12fc744e5a079dafbb9270fa25c978c5ea145b" -> "sha256:5795b1c8a6ad1f01cbb2f3392c5c766adab63760ccd1a803ee71ad037a028449" [label=""];
  "sha256:5795b1c8a6ad1f01cbb2f3392c5c766adab63760ccd1a803ee71ad037a028449" -> "sha256:98dcba94a1b34721e35a679a51a29636183e6da9739895c4ce6e6872d4ea4eaf" [label=""];
}

