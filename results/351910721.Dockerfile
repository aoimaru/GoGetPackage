[app/sources/351910721.Dockerfile]
digraph {
  "sha256:9c505168f886ac6e8f27e0e889bc0607cd61abdbdc259c01bc5c563c0179216b" [label="docker-image://docker.io/grapenf/java:latest" shape="ellipse"];
  "sha256:8636678d7d451d719dbed06f5a3eaa36b8537eb9447332836ba0317bf908c193" [label="/bin/sh -c curl http://artifactory.sammeth.net/artifactory/barna/barna/barna.capacitor/$_FLUX_VERSION/flux-capacitor-$_FLUX_VERSION.tgz | tar xzf -" shape="box"];
  "sha256:5c634297267dfeb7388f1d75c0efb6919dde3573e50eee340524c7be98656b5f" [label="sha256:5c634297267dfeb7388f1d75c0efb6919dde3573e50eee340524c7be98656b5f" shape="plaintext"];
  "sha256:9c505168f886ac6e8f27e0e889bc0607cd61abdbdc259c01bc5c563c0179216b" -> "sha256:8636678d7d451d719dbed06f5a3eaa36b8537eb9447332836ba0317bf908c193" [label=""];
  "sha256:8636678d7d451d719dbed06f5a3eaa36b8537eb9447332836ba0317bf908c193" -> "sha256:5c634297267dfeb7388f1d75c0efb6919dde3573e50eee340524c7be98656b5f" [label=""];
}

