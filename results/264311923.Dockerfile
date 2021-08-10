[app/sources/264311923.Dockerfile]
digraph {
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" [label="docker-image://docker.io/library/opensuse:13.2" shape="ellipse"];
  "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" [label="/bin/sh -c zypper --non-interactive install ca-certificates* curl gzip rpm-build" shape="box"];
  "sha256:29306e07a89373c32ce73b8f59a21fa1460dffa36204b88ada27446423c3fbd2" [label="/bin/sh -c zypper --non-interactive install libbtrfs-devel device-mapper-devel glibc-static  libselinux-devel libtool-ltdl-devel pkg-config selinux-policy selinux-policy-devel systemd-devel tar git cmake vim systemd-rpm-macros" shape="box"];
  "sha256:03599cfb7bd0ee9fe582566f45be3cf47c1219ec488b416fe64122ee513ae203" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:95d698bf5a0ca23d22c1fbebe89725195dc9fa4323ea05a1f16ff4dde57ac626" [label="sha256:95d698bf5a0ca23d22c1fbebe89725195dc9fa4323ea05a1f16ff4dde57ac626" shape="plaintext"];
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" -> "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" [label=""];
  "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" -> "sha256:29306e07a89373c32ce73b8f59a21fa1460dffa36204b88ada27446423c3fbd2" [label=""];
  "sha256:29306e07a89373c32ce73b8f59a21fa1460dffa36204b88ada27446423c3fbd2" -> "sha256:03599cfb7bd0ee9fe582566f45be3cf47c1219ec488b416fe64122ee513ae203" [label=""];
  "sha256:03599cfb7bd0ee9fe582566f45be3cf47c1219ec488b416fe64122ee513ae203" -> "sha256:95d698bf5a0ca23d22c1fbebe89725195dc9fa4323ea05a1f16ff4dde57ac626" [label=""];
}

