[app/sources/241871475.Dockerfile]
digraph {
  "sha256:36142714efa42dd82b85f9ae6da5d7d7ea758547bd0c79b73667ef5573814717" [label="docker-image://docker.io/library/ubuntu:precise@sha256:18305429afa14ea462f810146ba44d4363ae76e4c8dfc38288cf73aa07485005" shape="ellipse"];
  "sha256:0665085362b158f3609d93977c9a853b1841a5d6b203a0eb8c5fca78b890029e" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion  build-essential cmake curl ca-certificates debhelper dh-apparmor  git libapparmor-dev  libltdl-dev  libsqlite3-dev pkg-config vim-common --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b8ccfe4f1eeff3729a381e82b396f12f7f1b805c58bb7e0da86bbbed21f045ed" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:0414546e08e5ea4ad9c719d247a6ead1be5e88c330e7550c7d6e10f735634e1e" [label="sha256:0414546e08e5ea4ad9c719d247a6ead1be5e88c330e7550c7d6e10f735634e1e" shape="plaintext"];
  "sha256:36142714efa42dd82b85f9ae6da5d7d7ea758547bd0c79b73667ef5573814717" -> "sha256:0665085362b158f3609d93977c9a853b1841a5d6b203a0eb8c5fca78b890029e" [label=""];
  "sha256:0665085362b158f3609d93977c9a853b1841a5d6b203a0eb8c5fca78b890029e" -> "sha256:b8ccfe4f1eeff3729a381e82b396f12f7f1b805c58bb7e0da86bbbed21f045ed" [label=""];
  "sha256:b8ccfe4f1eeff3729a381e82b396f12f7f1b805c58bb7e0da86bbbed21f045ed" -> "sha256:0414546e08e5ea4ad9c719d247a6ead1be5e88c330e7550c7d6e10f735634e1e" [label=""];
}

