[app/sources/457432520.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:6c815cad0ff1677d3b28b3957d73b12429e34b1c6b39b66796ad90105bd9d9ab" [label="local://context" shape="ellipse"];
  "sha256:1595521e8b76dbfb1758e6885279e110e2924518bdc47c3998651c652ac1eb0d" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:caab6641869a16ce7e6190ee86a9b7a949e36f2d709856e61aa52e2e42788578" [label="sha256:caab6641869a16ce7e6190ee86a9b7a949e36f2d709856e61aa52e2e42788578" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:1595521e8b76dbfb1758e6885279e110e2924518bdc47c3998651c652ac1eb0d" [label=""];
  "sha256:6c815cad0ff1677d3b28b3957d73b12429e34b1c6b39b66796ad90105bd9d9ab" -> "sha256:1595521e8b76dbfb1758e6885279e110e2924518bdc47c3998651c652ac1eb0d" [label=""];
  "sha256:1595521e8b76dbfb1758e6885279e110e2924518bdc47c3998651c652ac1eb0d" -> "sha256:caab6641869a16ce7e6190ee86a9b7a949e36f2d709856e61aa52e2e42788578" [label=""];
}
