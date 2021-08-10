[app/sources/285956590.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:e00beba97702d59e5e62354804b796dfbadf9ef616880fa3da316839a2cb2234" [label="/bin/sh -c apt-get update && apt-get install -y stress         --no-install-recommends && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:fc7ed31a9e4d14546255719415219f99a33946253d4168faf5bd810cfee5d8d7" [label="sha256:fc7ed31a9e4d14546255719415219f99a33946253d4168faf5bd810cfee5d8d7" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:e00beba97702d59e5e62354804b796dfbadf9ef616880fa3da316839a2cb2234" [label=""];
  "sha256:e00beba97702d59e5e62354804b796dfbadf9ef616880fa3da316839a2cb2234" -> "sha256:fc7ed31a9e4d14546255719415219f99a33946253d4168faf5bd810cfee5d8d7" [label=""];
}

