[app/sources/141699134.Dockerfile]
digraph {
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" [label="docker-image://docker.io/library/opensuse:13.2" shape="ellipse"];
  "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" [label="/bin/sh -c zypper --non-interactive install ca-certificates* curl gzip rpm-build" shape="box"];
  "sha256:247098168a92164f554ed19c55cd93e5699d349069844ab39e51804ee7e3e7d7" [label="/bin/sh -c zypper --non-interactive install libbtrfs-devel device-mapper-devel glibc-static libselinux-devel selinux-policy selinux-policy-devel sqlite-devel tar" shape="box"];
  "sha256:2105ca20e0f6b5e0f3860419a0c69a7971974a45b2ff6ccf4dec2650530d6fb4" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:55c518f382da21d38bb6a46dfb6b51ac39e7ab623f9875c728767d844432845f" [label="sha256:55c518f382da21d38bb6a46dfb6b51ac39e7ab623f9875c728767d844432845f" shape="plaintext"];
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" -> "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" [label=""];
  "sha256:3a7e914cf4d845701810ec1e8fc7b2ff3bad60de4a85be32db8cfe7cd257f011" -> "sha256:247098168a92164f554ed19c55cd93e5699d349069844ab39e51804ee7e3e7d7" [label=""];
  "sha256:247098168a92164f554ed19c55cd93e5699d349069844ab39e51804ee7e3e7d7" -> "sha256:2105ca20e0f6b5e0f3860419a0c69a7971974a45b2ff6ccf4dec2650530d6fb4" [label=""];
  "sha256:2105ca20e0f6b5e0f3860419a0c69a7971974a45b2ff6ccf4dec2650530d6fb4" -> "sha256:55c518f382da21d38bb6a46dfb6b51ac39e7ab623f9875c728767d844432845f" [label=""];
}

