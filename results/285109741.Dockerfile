[app/sources/285109741.Dockerfile]
digraph {
  "sha256:6673dacb666d15f0384b8116536356c9578cb3adafd498693b843d734b2e8ca2" [label="local://context" shape="ellipse"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:8d23cff6900b2e80db97a01509ad60fd75fa0d990fa5d6e4134042d5d2bf006f" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:d9990ba73fddddcc13847f4bc524b73c36706a6bd86243278de473b50a3d64a0" [label="sha256:d9990ba73fddddcc13847f4bc524b73c36706a6bd86243278de473b50a3d64a0" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:8d23cff6900b2e80db97a01509ad60fd75fa0d990fa5d6e4134042d5d2bf006f" [label=""];
  "sha256:6673dacb666d15f0384b8116536356c9578cb3adafd498693b843d734b2e8ca2" -> "sha256:8d23cff6900b2e80db97a01509ad60fd75fa0d990fa5d6e4134042d5d2bf006f" [label=""];
  "sha256:8d23cff6900b2e80db97a01509ad60fd75fa0d990fa5d6e4134042d5d2bf006f" -> "sha256:d9990ba73fddddcc13847f4bc524b73c36706a6bd86243278de473b50a3d64a0" [label=""];
}

