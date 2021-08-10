[app/sources/259598259.Dockerfile]
digraph {
  "sha256:7c6cf2cfde079973925ff8186942cc8e237fa2252a5463dc9c78ff79216ee47c" [label="docker-image://docker.io/scoringengine/base:latest" shape="ellipse"];
  "sha256:2f9d36bd771ee0b985f9befb5c099c33938f858058b4c6d0c1ad2f14e39b9fef" [label="local://context" shape="ellipse"];
  "sha256:da59112807c5a5eaa0b5aa1b6a9743aa136c47adea1586a4224da650dc7061c5" [label="copy{src=/bin/engine, dest=/app/bin/engine}" shape="note"];
  "sha256:d66c99aaf81141918c199b837985c2bb4319f6a8e9286b9958b8e33093302b69" [label="sha256:d66c99aaf81141918c199b837985c2bb4319f6a8e9286b9958b8e33093302b69" shape="plaintext"];
  "sha256:7c6cf2cfde079973925ff8186942cc8e237fa2252a5463dc9c78ff79216ee47c" -> "sha256:da59112807c5a5eaa0b5aa1b6a9743aa136c47adea1586a4224da650dc7061c5" [label=""];
  "sha256:2f9d36bd771ee0b985f9befb5c099c33938f858058b4c6d0c1ad2f14e39b9fef" -> "sha256:da59112807c5a5eaa0b5aa1b6a9743aa136c47adea1586a4224da650dc7061c5" [label=""];
  "sha256:da59112807c5a5eaa0b5aa1b6a9743aa136c47adea1586a4224da650dc7061c5" -> "sha256:d66c99aaf81141918c199b837985c2bb4319f6a8e9286b9958b8e33093302b69" [label=""];
}

