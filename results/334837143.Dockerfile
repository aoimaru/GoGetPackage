[app/sources/334837143.Dockerfile]
digraph {
  "sha256:9f114c89e21f2d63801ad8cd20dca56bd271d610d15ecfccbffb02f316785af1" [label="docker-image://docker.io/library/java:8-alpine" shape="ellipse"];
  "sha256:57764b2a0e14f020c1e784889312fa0284a9a293e04b781bffed1d8857ccf864" [label="local://context" shape="ellipse"];
  "sha256:01ef75bafcda328fae78e540f0e2de3105a6e54e9c6c3779c133c8deaf3e3ee5" [label="copy{src=/target/pedestal-play-0.0.1-SNAPSHOT-standalone.jar, dest=/pedestal-play/app.jar}" shape="note"];
  "sha256:c26b8d6d63dc4f184fcab1c3ab577252ddd1c2c5944eb8028a63366460749ab9" [label="sha256:c26b8d6d63dc4f184fcab1c3ab577252ddd1c2c5944eb8028a63366460749ab9" shape="plaintext"];
  "sha256:9f114c89e21f2d63801ad8cd20dca56bd271d610d15ecfccbffb02f316785af1" -> "sha256:01ef75bafcda328fae78e540f0e2de3105a6e54e9c6c3779c133c8deaf3e3ee5" [label=""];
  "sha256:57764b2a0e14f020c1e784889312fa0284a9a293e04b781bffed1d8857ccf864" -> "sha256:01ef75bafcda328fae78e540f0e2de3105a6e54e9c6c3779c133c8deaf3e3ee5" [label=""];
  "sha256:01ef75bafcda328fae78e540f0e2de3105a6e54e9c6c3779c133c8deaf3e3ee5" -> "sha256:c26b8d6d63dc4f184fcab1c3ab577252ddd1c2c5944eb8028a63366460749ab9" [label=""];
}

