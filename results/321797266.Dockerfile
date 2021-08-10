[app/sources/321797266.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:2277ef543c99a7316ad1880da07b4d1ced7e885b66e9162b96b0cf5cdbb2310b" [label="/bin/sh -c apk --no-cache add openvpn" shape="box"];
  "sha256:4f09345d68def744e677776cbe20e53bb7bfe1c8f0c1f63884eca1e881be5047" [label="/bin/sh -c mkdir /usr/share/openvpn" shape="box"];
  "sha256:31520898e4ab573ec0bc0cc900c85cac966817ac416a82c5dd752d1dba848721" [label="/bin/sh -c cp /etc/openvpn/* /usr/share/openvpn/" shape="box"];
  "sha256:8c3f0136a48d621a51332dc8da21f13a87d1ca36b4c12cfebbe9fed96a3a7841" [label="local://context" shape="ellipse"];
  "sha256:60d7bd6ffce5e757caa8618d52ffc8660e6ce71a6a6c3bdb935d755c4094b63c" [label="copy{src=/wrapper.sh, dest=/wrapper.sh}" shape="note"];
  "sha256:1ef1d58b1011893d979f43e24e30bdc8b2e58b682b847451b1d3e1e38a3f704a" [label="mkdir{path=/etc/openvpn}" shape="note"];
  "sha256:842d75df43d49424532f1ae4319151a97c8c92057a96e32e197ed63ccd71e6a9" [label="sha256:842d75df43d49424532f1ae4319151a97c8c92057a96e32e197ed63ccd71e6a9" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:2277ef543c99a7316ad1880da07b4d1ced7e885b66e9162b96b0cf5cdbb2310b" [label=""];
  "sha256:2277ef543c99a7316ad1880da07b4d1ced7e885b66e9162b96b0cf5cdbb2310b" -> "sha256:4f09345d68def744e677776cbe20e53bb7bfe1c8f0c1f63884eca1e881be5047" [label=""];
  "sha256:4f09345d68def744e677776cbe20e53bb7bfe1c8f0c1f63884eca1e881be5047" -> "sha256:31520898e4ab573ec0bc0cc900c85cac966817ac416a82c5dd752d1dba848721" [label=""];
  "sha256:31520898e4ab573ec0bc0cc900c85cac966817ac416a82c5dd752d1dba848721" -> "sha256:60d7bd6ffce5e757caa8618d52ffc8660e6ce71a6a6c3bdb935d755c4094b63c" [label=""];
  "sha256:8c3f0136a48d621a51332dc8da21f13a87d1ca36b4c12cfebbe9fed96a3a7841" -> "sha256:60d7bd6ffce5e757caa8618d52ffc8660e6ce71a6a6c3bdb935d755c4094b63c" [label=""];
  "sha256:60d7bd6ffce5e757caa8618d52ffc8660e6ce71a6a6c3bdb935d755c4094b63c" -> "sha256:1ef1d58b1011893d979f43e24e30bdc8b2e58b682b847451b1d3e1e38a3f704a" [label=""];
  "sha256:1ef1d58b1011893d979f43e24e30bdc8b2e58b682b847451b1d3e1e38a3f704a" -> "sha256:842d75df43d49424532f1ae4319151a97c8c92057a96e32e197ed63ccd71e6a9" [label=""];
}

