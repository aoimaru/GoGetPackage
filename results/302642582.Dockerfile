[app/sources/302642582.Dockerfile]
digraph {
  "sha256:e6412b2225baad1fa83ae665dcf843606d8966c2e397fc6b4ee661cb9b2ad073" [label="docker-image://docker.io/aarch64/ubuntu:trusty" shape="ellipse"];
  "sha256:3d8340936bff0ea45b0666d1c7ca6c504617fe952a1c5a01332ba46f27f8d6ca" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libsqlite3-dev pkg-config vim-common libsystemd-journal-dev golang-1.6-go --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e3056d796aa8663bff46ca0e1cc9c1aefd8bc46a5e3f31eb0d39d4b4231a96e2" [label="/bin/sh -c update-alternatives --install /usr/bin/go go /usr/lib/go-1.6/bin/go 100" shape="box"];
  "sha256:d9631c2ae90d2e7f411fb22883d928cee64291152c58972a80be58584accc76d" [label="/bin/sh -c mkdir /usr/src/go && curl -fsSL https://golang.org/dl/go${GO_VERSION}.src.tar.gz | tar -v -C /usr/src/go -xz --strip-components=1 \t&& cd /usr/src/go/src \t&& GOOS=linux GOARCH=arm64 GOROOT_BOOTSTRAP=\"$(go env GOROOT)\" ./make.bash" shape="box"];
  "sha256:258d4337edd314411ba7427339019f2edd12c113a9c7649fa87adc0f8532d4fb" [label="sha256:258d4337edd314411ba7427339019f2edd12c113a9c7649fa87adc0f8532d4fb" shape="plaintext"];
  "sha256:e6412b2225baad1fa83ae665dcf843606d8966c2e397fc6b4ee661cb9b2ad073" -> "sha256:3d8340936bff0ea45b0666d1c7ca6c504617fe952a1c5a01332ba46f27f8d6ca" [label=""];
  "sha256:3d8340936bff0ea45b0666d1c7ca6c504617fe952a1c5a01332ba46f27f8d6ca" -> "sha256:e3056d796aa8663bff46ca0e1cc9c1aefd8bc46a5e3f31eb0d39d4b4231a96e2" [label=""];
  "sha256:e3056d796aa8663bff46ca0e1cc9c1aefd8bc46a5e3f31eb0d39d4b4231a96e2" -> "sha256:d9631c2ae90d2e7f411fb22883d928cee64291152c58972a80be58584accc76d" [label=""];
  "sha256:d9631c2ae90d2e7f411fb22883d928cee64291152c58972a80be58584accc76d" -> "sha256:258d4337edd314411ba7427339019f2edd12c113a9c7649fa87adc0f8532d4fb" [label=""];
}

