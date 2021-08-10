[app/sources/162233742.Dockerfile]
digraph {
  "sha256:bdeeeb59c54a0b19cbb760d67709b847bc8be8e9588e596ddc5c17699b60565c" [label="docker-image://docker.io/patrickod/docker-tor:latest" shape="ellipse"];
  "sha256:8889e7cb7bb8c4849d939d48b79686c071972e60b111a8c5b2c2ac40f11309fd" [label="/bin/sh -c mkdir -p /var/lib/tor/hidden-service" shape="box"];
  "sha256:0b9d7bc569a57a8a7d74e61b064a0b4c74cd137d1c62d30a2ef1883e122c4070" [label="/bin/sh -c chown -R root:root /var/lib/tor/hidden-service" shape="box"];
  "sha256:c669cbec7aecccaac40af411f0093c25ccd2d3c1d7a98fe8439b802a5580a603" [label="/bin/sh -c chmod -R 600 /var/lib/tor/hidden-service" shape="box"];
  "sha256:b910d8d462b50731a4803600f98edcdeb2681ea5a2e6cc73dd9acb68fbdba08c" [label="local://context" shape="ellipse"];
  "sha256:31332ed8f3f4839151179e25eb95c2b88c080a35e6b22144e1d4ce019e26b7ce" [label="copy{src=/torrc, dest=/etc/torrc}" shape="note"];
  "sha256:3fb88c52779b0d54ccee4226fe77e8a55183b1cea9fa0baa7a1c6156f725e56b" [label="copy{src=/start-tor, dest=/bin/start-tor}" shape="note"];
  "sha256:154fab13794a284cdcc6dc8d0844797f614b964d43f9cd0f7679e1082f5f146b" [label="sha256:154fab13794a284cdcc6dc8d0844797f614b964d43f9cd0f7679e1082f5f146b" shape="plaintext"];
  "sha256:bdeeeb59c54a0b19cbb760d67709b847bc8be8e9588e596ddc5c17699b60565c" -> "sha256:8889e7cb7bb8c4849d939d48b79686c071972e60b111a8c5b2c2ac40f11309fd" [label=""];
  "sha256:8889e7cb7bb8c4849d939d48b79686c071972e60b111a8c5b2c2ac40f11309fd" -> "sha256:0b9d7bc569a57a8a7d74e61b064a0b4c74cd137d1c62d30a2ef1883e122c4070" [label=""];
  "sha256:0b9d7bc569a57a8a7d74e61b064a0b4c74cd137d1c62d30a2ef1883e122c4070" -> "sha256:c669cbec7aecccaac40af411f0093c25ccd2d3c1d7a98fe8439b802a5580a603" [label=""];
  "sha256:c669cbec7aecccaac40af411f0093c25ccd2d3c1d7a98fe8439b802a5580a603" -> "sha256:31332ed8f3f4839151179e25eb95c2b88c080a35e6b22144e1d4ce019e26b7ce" [label=""];
  "sha256:b910d8d462b50731a4803600f98edcdeb2681ea5a2e6cc73dd9acb68fbdba08c" -> "sha256:31332ed8f3f4839151179e25eb95c2b88c080a35e6b22144e1d4ce019e26b7ce" [label=""];
  "sha256:31332ed8f3f4839151179e25eb95c2b88c080a35e6b22144e1d4ce019e26b7ce" -> "sha256:3fb88c52779b0d54ccee4226fe77e8a55183b1cea9fa0baa7a1c6156f725e56b" [label=""];
  "sha256:b910d8d462b50731a4803600f98edcdeb2681ea5a2e6cc73dd9acb68fbdba08c" -> "sha256:3fb88c52779b0d54ccee4226fe77e8a55183b1cea9fa0baa7a1c6156f725e56b" [label=""];
  "sha256:3fb88c52779b0d54ccee4226fe77e8a55183b1cea9fa0baa7a1c6156f725e56b" -> "sha256:154fab13794a284cdcc6dc8d0844797f614b964d43f9cd0f7679e1082f5f146b" [label=""];
}

