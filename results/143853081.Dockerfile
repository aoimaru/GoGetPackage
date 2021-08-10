[app/sources/143853081.Dockerfile]
digraph {
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:254ce348b4ac4475c6c1d9f2e2d4f7612986fec927144794e425d98cb73e549e" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion  build-essential cmake curl ca-certificates debhelper dh-apparmor  git libapparmor-dev  libltdl-dev  libsqlite3-dev pkg-config vim-common --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c031e92c51effb292b7a8e8c1a76c8e74a076c700a59b85cbc552fb0c5b8b813" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:106b5310f21f8638a4cc0f096cee46b02fe7204a43de85ac81ffd8f56b7eb9a4" [label="sha256:106b5310f21f8638a4cc0f096cee46b02fe7204a43de85ac81ffd8f56b7eb9a4" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:254ce348b4ac4475c6c1d9f2e2d4f7612986fec927144794e425d98cb73e549e" [label=""];
  "sha256:254ce348b4ac4475c6c1d9f2e2d4f7612986fec927144794e425d98cb73e549e" -> "sha256:c031e92c51effb292b7a8e8c1a76c8e74a076c700a59b85cbc552fb0c5b8b813" [label=""];
  "sha256:c031e92c51effb292b7a8e8c1a76c8e74a076c700a59b85cbc552fb0c5b8b813" -> "sha256:106b5310f21f8638a4cc0f096cee46b02fe7204a43de85ac81ffd8f56b7eb9a4" [label=""];
}

