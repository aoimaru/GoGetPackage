[app/sources/255678328.Dockerfile]
digraph {
  "sha256:e6412b2225baad1fa83ae665dcf843606d8966c2e397fc6b4ee661cb9b2ad073" [label="docker-image://docker.io/aarch64/ubuntu:trusty" shape="ellipse"];
  "sha256:175bb354e5368f618b956856941f4766d2c9359865b094f035e79dddd5d7c3dc" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev pkg-config vim-common libsystemd-journal-dev golang-1.6-go --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:77042ed08afb8b071af4ed6a1da454548193237810b90aa7c7370cb5141c62d5" [label="/bin/sh -c update-alternatives --install /usr/bin/go go /usr/lib/go-1.6/bin/go 100" shape="box"];
  "sha256:c9e08c5560169f644d7cb8459cf9edb479aa800eae514d9a5137aa6b9ec57f93" [label="/bin/sh -c mkdir /usr/src/go && curl -fsSL https://golang.org/dl/go${GO_VERSION}.src.tar.gz | tar -v -C /usr/src/go -xz --strip-components=1 \t&& cd /usr/src/go/src \t&& GOOS=linux GOARCH=arm64 GOROOT_BOOTSTRAP=\"$(go env GOROOT)\" ./make.bash" shape="box"];
  "sha256:f8eae1aaeece285dd2f1dbe79aff510a999429c6b2cccd6cd476250c04309600" [label="sha256:f8eae1aaeece285dd2f1dbe79aff510a999429c6b2cccd6cd476250c04309600" shape="plaintext"];
  "sha256:e6412b2225baad1fa83ae665dcf843606d8966c2e397fc6b4ee661cb9b2ad073" -> "sha256:175bb354e5368f618b956856941f4766d2c9359865b094f035e79dddd5d7c3dc" [label=""];
  "sha256:175bb354e5368f618b956856941f4766d2c9359865b094f035e79dddd5d7c3dc" -> "sha256:77042ed08afb8b071af4ed6a1da454548193237810b90aa7c7370cb5141c62d5" [label=""];
  "sha256:77042ed08afb8b071af4ed6a1da454548193237810b90aa7c7370cb5141c62d5" -> "sha256:c9e08c5560169f644d7cb8459cf9edb479aa800eae514d9a5137aa6b9ec57f93" [label=""];
  "sha256:c9e08c5560169f644d7cb8459cf9edb479aa800eae514d9a5137aa6b9ec57f93" -> "sha256:f8eae1aaeece285dd2f1dbe79aff510a999429c6b2cccd6cd476250c04309600" [label=""];
}

