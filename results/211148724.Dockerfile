[app/sources/211148724.Dockerfile]
digraph {
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" [label="docker-image://docker.io/library/spark-test-base:latest" shape="ellipse"];
  "sha256:561f766487479541ef8055a90d76550f5e94e660e5fb7f01ad04d294db889624" [label="local://context" shape="ellipse"];
  "sha256:ee4d6ddcb4d8ca4de893d45740da9a4ea2e7bd74e452c55e13fb8a36865e85f6" [label="copy{src=/default_cmd, dest=/root/}" shape="note"];
  "sha256:c110909c1b7732f7e57d8d6a071ed2471f9bac24132aac4db02fc56f168aab83" [label="sha256:c110909c1b7732f7e57d8d6a071ed2471f9bac24132aac4db02fc56f168aab83" shape="plaintext"];
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" -> "sha256:ee4d6ddcb4d8ca4de893d45740da9a4ea2e7bd74e452c55e13fb8a36865e85f6" [label=""];
  "sha256:561f766487479541ef8055a90d76550f5e94e660e5fb7f01ad04d294db889624" -> "sha256:ee4d6ddcb4d8ca4de893d45740da9a4ea2e7bd74e452c55e13fb8a36865e85f6" [label=""];
  "sha256:ee4d6ddcb4d8ca4de893d45740da9a4ea2e7bd74e452c55e13fb8a36865e85f6" -> "sha256:c110909c1b7732f7e57d8d6a071ed2471f9bac24132aac4db02fc56f168aab83" [label=""];
}

