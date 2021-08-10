[app/sources/366582330.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:9167d3bfcf5b56bc1d89ceead0700833acd00a606afbec6d6914e92ac19d0cce" [label="/bin/sh -c apt-get update  && apt-get install -y --force-yes --no-install-recommends       apt-transport-https       build-essential       curl       ca-certificates       git       lsb-release       python-all       rlwrap       wget  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:a339168b24b7ec600a17c8ae02fdfa3857531c28b6c2681450301e5b97593d41" [label="/bin/sh -c wget https://nsolid-download.nodesource.com/download/nsolid-node/release/v1.3.0/nsolid-v1.3.0-linux-x64.tar.xz  && wget https://nsolid-download.nodesource.com/download/nsolid-node/release/v1.3.0/SHASUMS256.txt.asc  && tar -xJC / --strip-components 1 -f *.tar.xz" shape="box"];
  "sha256:b8ec52ff5b1408a3c088d1e3b02094a0ef2329711803e66aea4fe217f8f9d745" [label="/bin/sh -c apt-get update  && apt-get upgrade -y --force-yes  && rm -rf /var/lib/apt/lists/*;" shape="box"];
  "sha256:56d15c21f87bceadc0d83141c5dcec0e0f11185e6f66583194737af789a356a4" [label="/bin/sh -c echo \"#!/usr/bin/env bash\\nuntil grep \\\"eth0\\\" 2>&1 > /dev/null <<< \\\"\\$(NSOLID_SOCKET='' NSOLID_HUB='' nsolid -p 'console.log(require(\\\"os\\\").networkInterfaces())')\\\" ; do sleep .05; done; exec \\\"\\$@\\\"\" >> /bin/wrap_nsolid && chmod +x /bin/wrap_nsolid" shape="box"];
  "sha256:14383b8fe89a1d04475f51f0ac09e4254d574e1b7f2d9d8acdfddc2a97526711" [label="sha256:14383b8fe89a1d04475f51f0ac09e4254d574e1b7f2d9d8acdfddc2a97526711" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:9167d3bfcf5b56bc1d89ceead0700833acd00a606afbec6d6914e92ac19d0cce" [label=""];
  "sha256:9167d3bfcf5b56bc1d89ceead0700833acd00a606afbec6d6914e92ac19d0cce" -> "sha256:a339168b24b7ec600a17c8ae02fdfa3857531c28b6c2681450301e5b97593d41" [label=""];
  "sha256:a339168b24b7ec600a17c8ae02fdfa3857531c28b6c2681450301e5b97593d41" -> "sha256:b8ec52ff5b1408a3c088d1e3b02094a0ef2329711803e66aea4fe217f8f9d745" [label=""];
  "sha256:b8ec52ff5b1408a3c088d1e3b02094a0ef2329711803e66aea4fe217f8f9d745" -> "sha256:56d15c21f87bceadc0d83141c5dcec0e0f11185e6f66583194737af789a356a4" [label=""];
  "sha256:56d15c21f87bceadc0d83141c5dcec0e0f11185e6f66583194737af789a356a4" -> "sha256:14383b8fe89a1d04475f51f0ac09e4254d574e1b7f2d9d8acdfddc2a97526711" [label=""];
}

