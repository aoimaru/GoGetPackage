[app/sources/356289566.Dockerfile]
digraph {
  "sha256:dfe1046525673eeed8eefa1a48b5d3f5c4556a6753ec152e1a9f02e601faa896" [label="docker-image://docker.io/library/ubuntu-debootstrap:wily" shape="ellipse"];
  "sha256:099febcd82b3b4dbf40f34295e0df8266f8c2ac1ffece78e3e955edac4174de3" [label="/bin/sh -c apt-get update && apt-get install -y bash-completion btrfs-tools build-essential curl ca-certificates debhelper dh-systemd git libapparmor-dev libdevmapper-dev libsqlite3-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7af8e1a8455703f192fa0308d74c19e7ba6f8f6b57f00723334554134dc4cf7f" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:caf3a995de7cd6c53869b979455eff575801c92a4cfebddabdc875b4a066d75e" [label="sha256:caf3a995de7cd6c53869b979455eff575801c92a4cfebddabdc875b4a066d75e" shape="plaintext"];
  "sha256:dfe1046525673eeed8eefa1a48b5d3f5c4556a6753ec152e1a9f02e601faa896" -> "sha256:099febcd82b3b4dbf40f34295e0df8266f8c2ac1ffece78e3e955edac4174de3" [label=""];
  "sha256:099febcd82b3b4dbf40f34295e0df8266f8c2ac1ffece78e3e955edac4174de3" -> "sha256:7af8e1a8455703f192fa0308d74c19e7ba6f8f6b57f00723334554134dc4cf7f" [label=""];
  "sha256:7af8e1a8455703f192fa0308d74c19e7ba6f8f6b57f00723334554134dc4cf7f" -> "sha256:caf3a995de7cd6c53869b979455eff575801c92a4cfebddabdc875b4a066d75e" [label=""];
}

