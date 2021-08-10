[app/sources/361981706.Dockerfile]
digraph {
  "sha256:41b506fe549b68aaca64f84aca70b09d5a9de58aacdef4862608fa716c09121e" [label="docker-image://docker.io/armhf/debian:jessie@sha256:ae705bf6614c467bad86891b8e441c9e0c987389b6e4d34c7b1371c0f841249f" shape="ellipse"];
  "sha256:59b219ee6eae450f3d1be59705c9534ec6a114b42d96bcba26c9f382504183b0" [label="/bin/sh -c sed -i s/httpredir.debian.org/$APT_MIRROR/g /etc/apt/sources.list" shape="box"];
  "sha256:f3a7ef6abe209b97e057be820af64c2dc4f0e5e48f11a06bcf3b2661a989b194" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libsqlite3-dev libsystemd-journal-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1e5a78446611fd90e3086668dd307ad1c16e1d332680ed9509bcf7fffa4b9aab" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:dc86a5800eed339489a9d5f79b7835ad9d36d0aa8bc1907a4ff1eb0c6d630fbd" [label="sha256:dc86a5800eed339489a9d5f79b7835ad9d36d0aa8bc1907a4ff1eb0c6d630fbd" shape="plaintext"];
  "sha256:41b506fe549b68aaca64f84aca70b09d5a9de58aacdef4862608fa716c09121e" -> "sha256:59b219ee6eae450f3d1be59705c9534ec6a114b42d96bcba26c9f382504183b0" [label=""];
  "sha256:59b219ee6eae450f3d1be59705c9534ec6a114b42d96bcba26c9f382504183b0" -> "sha256:f3a7ef6abe209b97e057be820af64c2dc4f0e5e48f11a06bcf3b2661a989b194" [label=""];
  "sha256:f3a7ef6abe209b97e057be820af64c2dc4f0e5e48f11a06bcf3b2661a989b194" -> "sha256:1e5a78446611fd90e3086668dd307ad1c16e1d332680ed9509bcf7fffa4b9aab" [label=""];
  "sha256:1e5a78446611fd90e3086668dd307ad1c16e1d332680ed9509bcf7fffa4b9aab" -> "sha256:dc86a5800eed339489a9d5f79b7835ad9d36d0aa8bc1907a4ff1eb0c6d630fbd" [label=""];
}

