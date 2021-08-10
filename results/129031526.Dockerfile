[app/sources/129031526.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:11aec053575f6be2069c272feb0732bf5650a79e1ff7b2e4dd9d1217aa7ac3c0" [label="local://context" shape="ellipse"];
  "sha256:497e61b7739ba3a6f6033c2c2da04867f51f93a6dd42c1355aeb83bfeb7a9cb5" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:83ce7174d9a2735c2a83a874cb3fb7340ce632105b695134a81a33af8e5630e2" [label="sha256:83ce7174d9a2735c2a83a874cb3fb7340ce632105b695134a81a33af8e5630e2" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:497e61b7739ba3a6f6033c2c2da04867f51f93a6dd42c1355aeb83bfeb7a9cb5" [label=""];
  "sha256:11aec053575f6be2069c272feb0732bf5650a79e1ff7b2e4dd9d1217aa7ac3c0" -> "sha256:497e61b7739ba3a6f6033c2c2da04867f51f93a6dd42c1355aeb83bfeb7a9cb5" [label=""];
  "sha256:497e61b7739ba3a6f6033c2c2da04867f51f93a6dd42c1355aeb83bfeb7a9cb5" -> "sha256:83ce7174d9a2735c2a83a874cb3fb7340ce632105b695134a81a33af8e5630e2" [label=""];
}

