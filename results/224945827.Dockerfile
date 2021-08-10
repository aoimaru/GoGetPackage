[app/sources/224945827.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:0051857089c45cc563928d4bb017eff593088cbb426802fddb7cf77e54673618" [label="/bin/sh -c apt-get update &&     apt-get install        ca-certificates        curl        gcc        libc6-dev        -qqy        --no-install-recommends     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:98b3b7a9406563af1243222abd8279224c37344729645891a2b1d37d41c41b2b" [label="/bin/sh -c mkdir -p /rust" shape="box"];
  "sha256:052eeb9ebe2a322b186e311b60d71633e54cd3590b008d2582fde15841f11df5" [label="mkdir{path=/rust}" shape="note"];
  "sha256:f3e24e220e3931d6ad2c83ae8de77dc2c780b20c921edc9acc27efe63282c327" [label="/bin/sh -c curl -fsOSL $RUST_DOWNLOAD_URL     && curl -s $RUST_DOWNLOAD_URL.sha256 | sha256sum -c -     && tar -C /rust -xzf $RUST_ARCHIVE --strip-components=1     && rm $RUST_ARCHIVE     && ./install.sh" shape="box"];
  "sha256:94c7cbe34399eaf4ceb08f46ea1dd906f4eb827eda040cf7f74a8bb48a4b5041" [label="sha256:94c7cbe34399eaf4ceb08f46ea1dd906f4eb827eda040cf7f74a8bb48a4b5041" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:0051857089c45cc563928d4bb017eff593088cbb426802fddb7cf77e54673618" [label=""];
  "sha256:0051857089c45cc563928d4bb017eff593088cbb426802fddb7cf77e54673618" -> "sha256:98b3b7a9406563af1243222abd8279224c37344729645891a2b1d37d41c41b2b" [label=""];
  "sha256:98b3b7a9406563af1243222abd8279224c37344729645891a2b1d37d41c41b2b" -> "sha256:052eeb9ebe2a322b186e311b60d71633e54cd3590b008d2582fde15841f11df5" [label=""];
  "sha256:052eeb9ebe2a322b186e311b60d71633e54cd3590b008d2582fde15841f11df5" -> "sha256:f3e24e220e3931d6ad2c83ae8de77dc2c780b20c921edc9acc27efe63282c327" [label=""];
  "sha256:f3e24e220e3931d6ad2c83ae8de77dc2c780b20c921edc9acc27efe63282c327" -> "sha256:94c7cbe34399eaf4ceb08f46ea1dd906f4eb827eda040cf7f74a8bb48a4b5041" [label=""];
}

