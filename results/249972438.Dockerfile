[app/sources/249972438.Dockerfile]
digraph {
  "sha256:cfd5d31f6b6a5ecf0fa287f3984df4f7dd58c581e9a29edf367a34e48e3c63c4" [label="docker-image://docker.io/kyriosdata/jdk11:latest" shape="ellipse"];
  "sha256:6f5d9cb0c48ef769529eaf7f43500a4bc44e886674d788363b5f6b8177f7c231" [label="local://context" shape="ellipse"];
  "sha256:2403b6b551deda8f7c32ff16a0ce29cc08bd2b491c31b8aa023642e470ad46a3" [label="copy{src=/target/api.jar, dest=/app.jar}" shape="note"];
  "sha256:7cda9d177cf80aa5dcbcd0f5cf705a323f6a6ee68ec8a1c66afa476a5586ea00" [label="sha256:7cda9d177cf80aa5dcbcd0f5cf705a323f6a6ee68ec8a1c66afa476a5586ea00" shape="plaintext"];
  "sha256:cfd5d31f6b6a5ecf0fa287f3984df4f7dd58c581e9a29edf367a34e48e3c63c4" -> "sha256:2403b6b551deda8f7c32ff16a0ce29cc08bd2b491c31b8aa023642e470ad46a3" [label=""];
  "sha256:6f5d9cb0c48ef769529eaf7f43500a4bc44e886674d788363b5f6b8177f7c231" -> "sha256:2403b6b551deda8f7c32ff16a0ce29cc08bd2b491c31b8aa023642e470ad46a3" [label=""];
  "sha256:2403b6b551deda8f7c32ff16a0ce29cc08bd2b491c31b8aa023642e470ad46a3" -> "sha256:7cda9d177cf80aa5dcbcd0f5cf705a323f6a6ee68ec8a1c66afa476a5586ea00" [label=""];
}

