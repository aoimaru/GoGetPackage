[app/sources/254597065.Dockerfile]
digraph {
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" [label="docker-image://quay.io/prometheus/busybox:latest@sha256:a56e11cce1c09f50a71290d65733ebe976adc8654395091d5379c7f294cc891e" shape="ellipse"];
  "sha256:cd608c3d7dab30cf3e82ca57a27ef64fd106679a18e69f1f6ff19c8d258a458a" [label="local://context" shape="ellipse"];
  "sha256:1ed41c58973d710e317d9f1c465f5e5eb1b949d6595f206868a0c9551be47d4b" [label="copy{src=/firehose_exporter, dest=/bin/firehose_exporter}" shape="note"];
  "sha256:967cd7a497521d1520e9e3b5f130dbac29e642e4177cfe3fde03cba7b7907d19" [label="sha256:967cd7a497521d1520e9e3b5f130dbac29e642e4177cfe3fde03cba7b7907d19" shape="plaintext"];
  "sha256:3ba99a5837d4bcdc79adebf627eea483ab265b658638c65573be7be710b165c0" -> "sha256:1ed41c58973d710e317d9f1c465f5e5eb1b949d6595f206868a0c9551be47d4b" [label=""];
  "sha256:cd608c3d7dab30cf3e82ca57a27ef64fd106679a18e69f1f6ff19c8d258a458a" -> "sha256:1ed41c58973d710e317d9f1c465f5e5eb1b949d6595f206868a0c9551be47d4b" [label=""];
  "sha256:1ed41c58973d710e317d9f1c465f5e5eb1b949d6595f206868a0c9551be47d4b" -> "sha256:967cd7a497521d1520e9e3b5f130dbac29e642e4177cfe3fde03cba7b7907d19" [label=""];
}

