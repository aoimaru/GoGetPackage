[app/sources/316524616.Dockerfile]
digraph {
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:23fa01081ab44d67892708e35a5de5a2f37a2139435caf6826c134ab0689da25" [label="/bin/sh -c mkdir -p /opt/dremio   && mkdir -p /var/lib/dremio   && mkdir -p /var/run/dremio   && mkdir -p /var/log/dremio   && mkdir -p /opt/dremio/data     && groupadd --system dremio   && useradd --base-dir /var/lib/dremio --system --gid dremio dremio   && chown -R dremio:dremio /opt/dremio/data   && chown -R dremio:dremio /var/run/dremio   && chown -R dremio:dremio /var/log/dremio   && chown -R dremio:dremio /var/lib/dremio   && wget -q \"${DOWNLOAD_URL}\" -O dremio.tar.gz   && tar vxfz dremio.tar.gz -C /opt/dremio --strip-components=1   && rm -rf dremio.tar.gz" shape="box"];
  "sha256:92bf56451ce9c6d18c8e20617f3e4edd9c372a2d7190fb517b4a2b0de405db4a" [label="mkdir{path=/opt/dremio}" shape="note"];
  "sha256:2fbe1b714c10fdb6664fdebe94d1a48933f04531ba6634b9dc2c6ad8d0df36e8" [label="sha256:2fbe1b714c10fdb6664fdebe94d1a48933f04531ba6634b9dc2c6ad8d0df36e8" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:23fa01081ab44d67892708e35a5de5a2f37a2139435caf6826c134ab0689da25" [label=""];
  "sha256:23fa01081ab44d67892708e35a5de5a2f37a2139435caf6826c134ab0689da25" -> "sha256:92bf56451ce9c6d18c8e20617f3e4edd9c372a2d7190fb517b4a2b0de405db4a" [label=""];
  "sha256:92bf56451ce9c6d18c8e20617f3e4edd9c372a2d7190fb517b4a2b0de405db4a" -> "sha256:2fbe1b714c10fdb6664fdebe94d1a48933f04531ba6634b9dc2c6ad8d0df36e8" [label=""];
}

