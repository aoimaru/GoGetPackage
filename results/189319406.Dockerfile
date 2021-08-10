[app/sources/189319406.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:7d7a36a7c7ad45b2527c5bef9e52d86d88c7cd19c33a0c316fe8e07d1f3f5673" [label="/bin/sh -c yum -y update &&     yum install -y     wget &&     yum clean all" shape="box"];
  "sha256:9e948b67a403b932d1d968007e2cb3d8f26c5c6a8749ce21256e3b4520a3d862" [label="/bin/sh -c wget http://packages.couchbase.com/releases/couchbase-sync-gateway/1.4.1/couchbase-sync-gateway-community_1.4.1-3_x86_64.rpm &&     rpm -i couchbase-sync-gateway-community_1.4.1-3_x86_64.rpm &&     rm couchbase-sync-gateway-community_1.4.1-3_x86_64.rpm" shape="box"];
  "sha256:c216ec7a75ae0c4b4c1773c24268b5be3164102e5e214e7120dadab550729900" [label="/bin/sh -c mkdir /opt/couchbase-sync-gateway/data" shape="box"];
  "sha256:69d5a7a6736c6a06f89c471caa9a77d1b29f9177eb25bcad6244a7de28d2e6a2" [label="local://context" shape="ellipse"];
  "sha256:973acd9b57c0471ea2dd0232c9ac464800e128c51a66bcbf1a89df9dd5beebd1" [label="copy{src=/config/sync_gateway_config.json, dest=/etc/sync_gateway/config.json}" shape="note"];
  "sha256:6c7039c5866f28151abbd8b7fe91beb9a85b6ba6e4677003fdde67876b0cb432" [label="copy{src=/scripts/entrypoint.sh, dest=/}" shape="note"];
  "sha256:9b6ec0ea2b04372e9df4b2bc07adb147223f8e74215ff4e2a7255ee6b1bea936" [label="sha256:9b6ec0ea2b04372e9df4b2bc07adb147223f8e74215ff4e2a7255ee6b1bea936" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:7d7a36a7c7ad45b2527c5bef9e52d86d88c7cd19c33a0c316fe8e07d1f3f5673" [label=""];
  "sha256:7d7a36a7c7ad45b2527c5bef9e52d86d88c7cd19c33a0c316fe8e07d1f3f5673" -> "sha256:9e948b67a403b932d1d968007e2cb3d8f26c5c6a8749ce21256e3b4520a3d862" [label=""];
  "sha256:9e948b67a403b932d1d968007e2cb3d8f26c5c6a8749ce21256e3b4520a3d862" -> "sha256:c216ec7a75ae0c4b4c1773c24268b5be3164102e5e214e7120dadab550729900" [label=""];
  "sha256:c216ec7a75ae0c4b4c1773c24268b5be3164102e5e214e7120dadab550729900" -> "sha256:973acd9b57c0471ea2dd0232c9ac464800e128c51a66bcbf1a89df9dd5beebd1" [label=""];
  "sha256:69d5a7a6736c6a06f89c471caa9a77d1b29f9177eb25bcad6244a7de28d2e6a2" -> "sha256:973acd9b57c0471ea2dd0232c9ac464800e128c51a66bcbf1a89df9dd5beebd1" [label=""];
  "sha256:973acd9b57c0471ea2dd0232c9ac464800e128c51a66bcbf1a89df9dd5beebd1" -> "sha256:6c7039c5866f28151abbd8b7fe91beb9a85b6ba6e4677003fdde67876b0cb432" [label=""];
  "sha256:69d5a7a6736c6a06f89c471caa9a77d1b29f9177eb25bcad6244a7de28d2e6a2" -> "sha256:6c7039c5866f28151abbd8b7fe91beb9a85b6ba6e4677003fdde67876b0cb432" [label=""];
  "sha256:6c7039c5866f28151abbd8b7fe91beb9a85b6ba6e4677003fdde67876b0cb432" -> "sha256:9b6ec0ea2b04372e9df4b2bc07adb147223f8e74215ff4e2a7255ee6b1bea936" [label=""];
}

