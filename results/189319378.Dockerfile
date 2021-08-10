[app/sources/189319378.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:7d7a36a7c7ad45b2527c5bef9e52d86d88c7cd19c33a0c316fe8e07d1f3f5673" [label="/bin/sh -c yum -y update &&     yum install -y     wget &&     yum clean all" shape="box"];
  "sha256:6e0ff14394d6c73a3720713770285f7f43d99e60be950bcf19eeae88fa0fd094" [label="/bin/sh -c wget http://packages.couchbase.com/releases/couchbase-sync-gateway/1.2.0/couchbase-sync-gateway-community_1.2.0-rc0_x86_64.rpm &&     rpm -i couchbase-sync-gateway-community_1.2.0-rc0_x86_64.rpm &&     rm couchbase-sync-gateway-community_1.2.0-rc0_x86_64.rpm" shape="box"];
  "sha256:81aa40b21de6c5fa22958578cf3fdf6b7aeb3fff58d544347fdac4bdf7396e55" [label="/bin/sh -c mkdir /opt/couchbase-sync-gateway/data" shape="box"];
  "sha256:88fb84994a69b42ab4a22e2379e2be1ffcdb36c4faef1af75d9799016557fb1a" [label="local://context" shape="ellipse"];
  "sha256:786c1b6e945ef1545e40acef92d20dcff853ef6ebe4cc632536ac141ce674731" [label="copy{src=/config/sync_gateway_config.json, dest=/etc/sync_gateway/config.json}" shape="note"];
  "sha256:3a1dd78486c3b26e491839eaedad2fd5d33f0b0e190e19114ef4e63051b30c02" [label="copy{src=/scripts/entrypoint.sh, dest=/}" shape="note"];
  "sha256:5770db80dcdc7a3569d8bb39880f48b29fb5545b0deb6c02d08b4f78cbfee104" [label="sha256:5770db80dcdc7a3569d8bb39880f48b29fb5545b0deb6c02d08b4f78cbfee104" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:7d7a36a7c7ad45b2527c5bef9e52d86d88c7cd19c33a0c316fe8e07d1f3f5673" [label=""];
  "sha256:7d7a36a7c7ad45b2527c5bef9e52d86d88c7cd19c33a0c316fe8e07d1f3f5673" -> "sha256:6e0ff14394d6c73a3720713770285f7f43d99e60be950bcf19eeae88fa0fd094" [label=""];
  "sha256:6e0ff14394d6c73a3720713770285f7f43d99e60be950bcf19eeae88fa0fd094" -> "sha256:81aa40b21de6c5fa22958578cf3fdf6b7aeb3fff58d544347fdac4bdf7396e55" [label=""];
  "sha256:81aa40b21de6c5fa22958578cf3fdf6b7aeb3fff58d544347fdac4bdf7396e55" -> "sha256:786c1b6e945ef1545e40acef92d20dcff853ef6ebe4cc632536ac141ce674731" [label=""];
  "sha256:88fb84994a69b42ab4a22e2379e2be1ffcdb36c4faef1af75d9799016557fb1a" -> "sha256:786c1b6e945ef1545e40acef92d20dcff853ef6ebe4cc632536ac141ce674731" [label=""];
  "sha256:786c1b6e945ef1545e40acef92d20dcff853ef6ebe4cc632536ac141ce674731" -> "sha256:3a1dd78486c3b26e491839eaedad2fd5d33f0b0e190e19114ef4e63051b30c02" [label=""];
  "sha256:88fb84994a69b42ab4a22e2379e2be1ffcdb36c4faef1af75d9799016557fb1a" -> "sha256:3a1dd78486c3b26e491839eaedad2fd5d33f0b0e190e19114ef4e63051b30c02" [label=""];
  "sha256:3a1dd78486c3b26e491839eaedad2fd5d33f0b0e190e19114ef4e63051b30c02" -> "sha256:5770db80dcdc7a3569d8bb39880f48b29fb5545b0deb6c02d08b4f78cbfee104" [label=""];
}

