[app/sources/189319364.Dockerfile]
digraph {
  "sha256:345455e3e7e333fb43d8dc28a743dbcce3ccd927f185508dbd00679196213072" [label="local://context" shape="ellipse"];
  "sha256:2d8b193c46d97654cb777bf20ec209fd06d4832c9ddd06077511c093922d7902" [label="docker-image://docker.io/tleyden5iwx/forestdb:latest" shape="ellipse"];
  "sha256:da7735de396796633696ed0df84ca9f8f062c7cb4e6145ee3f569c5777766894" [label="/bin/sh -c yum -y update &&     yum install -y     wget &&     yum clean all" shape="box"];
  "sha256:158facb28c05431ae3d011ebc84f76da72a50b52f1389d8d5e9ea1b702869330" [label="/bin/sh -c wget http://packages.couchbase.com/releases/couchbase-sync-gateway/1.1.0/couchbase-sync-gateway-community_1.1.0-forestdb_bucket_x86_64.rpm &&     rpm -i couchbase-sync-gateway-community_1.1.0-forestdb_bucket_x86_64.rpm &&     rm couchbase-sync-gateway-community_1.1.0-forestdb_bucket_x86_64.rpm" shape="box"];
  "sha256:3c380d2ebcefea3ac153698a9eb6fbf6701ab5366549a82c41dc60ce853e01ff" [label="/bin/sh -c mkdir /opt/couchbase-sync-gateway/data" shape="box"];
  "sha256:384e46e3768b7c0301d8c724645ff58410b0a592724c6d77025df048e8d9de6e" [label="copy{src=/config/sync_gateway_config.json, dest=/etc/sync_gateway/config.json}" shape="note"];
  "sha256:09620955a2934f95c14aa8a47b1878f026999d9fc9cbefd6c1b529f62a87596a" [label="copy{src=/scripts/entrypoint.sh, dest=/}" shape="note"];
  "sha256:909465d99086b0c6d2c895856b3d1f0a35b17a41342ea0ba9c8da0650617584d" [label="sha256:909465d99086b0c6d2c895856b3d1f0a35b17a41342ea0ba9c8da0650617584d" shape="plaintext"];
  "sha256:2d8b193c46d97654cb777bf20ec209fd06d4832c9ddd06077511c093922d7902" -> "sha256:da7735de396796633696ed0df84ca9f8f062c7cb4e6145ee3f569c5777766894" [label=""];
  "sha256:da7735de396796633696ed0df84ca9f8f062c7cb4e6145ee3f569c5777766894" -> "sha256:158facb28c05431ae3d011ebc84f76da72a50b52f1389d8d5e9ea1b702869330" [label=""];
  "sha256:158facb28c05431ae3d011ebc84f76da72a50b52f1389d8d5e9ea1b702869330" -> "sha256:3c380d2ebcefea3ac153698a9eb6fbf6701ab5366549a82c41dc60ce853e01ff" [label=""];
  "sha256:3c380d2ebcefea3ac153698a9eb6fbf6701ab5366549a82c41dc60ce853e01ff" -> "sha256:384e46e3768b7c0301d8c724645ff58410b0a592724c6d77025df048e8d9de6e" [label=""];
  "sha256:345455e3e7e333fb43d8dc28a743dbcce3ccd927f185508dbd00679196213072" -> "sha256:384e46e3768b7c0301d8c724645ff58410b0a592724c6d77025df048e8d9de6e" [label=""];
  "sha256:384e46e3768b7c0301d8c724645ff58410b0a592724c6d77025df048e8d9de6e" -> "sha256:09620955a2934f95c14aa8a47b1878f026999d9fc9cbefd6c1b529f62a87596a" [label=""];
  "sha256:345455e3e7e333fb43d8dc28a743dbcce3ccd927f185508dbd00679196213072" -> "sha256:09620955a2934f95c14aa8a47b1878f026999d9fc9cbefd6c1b529f62a87596a" [label=""];
  "sha256:09620955a2934f95c14aa8a47b1878f026999d9fc9cbefd6c1b529f62a87596a" -> "sha256:909465d99086b0c6d2c895856b3d1f0a35b17a41342ea0ba9c8da0650617584d" [label=""];
}

