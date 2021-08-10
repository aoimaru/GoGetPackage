[app/sources/252793684.Dockerfile]
digraph {
  "sha256:7a939689e93c881fba662670f99e31bb6130f220d428bbf5620335f1ba8dd2ab" [label="local://context" shape="ellipse"];
  "sha256:f4a5e0707ea3acd85113bc2703501ad747e1756e7cba6f87994ebf8d0b1f1c58" [label="docker-image://docker.io/sameersbn/ubuntu:14.04.20141001" shape="ellipse"];
  "sha256:edfbed3281e995acda1e1c545004c5d9e6296be891cfeccafacc198392ebcdf9" [label="/bin/sh -c apt-get update && apt-get install -y squid3 && mv /etc/squid3/squid.conf /etc/squid3/squid.conf.dist && rm -rf /var/lib/apt/lists/* # 20140928" shape="box"];
  "sha256:3e6302ca49656090d615df4e1c78adbdf92e2d54f4ed56f5b7d9c2f82d7b3739" [label="copy{src=/squid.conf, dest=/etc/squid3/squid.conf}" shape="note"];
  "sha256:3c7f7326e2e852c15c8d94484d994f1a68e4668c88e563e9fb72d46af7cc8a33" [label="copy{src=/start, dest=/start}" shape="note"];
  "sha256:97b0cac9e23ae3c83566610b0bd4765a18b82a23c7386c86d4337c565793cd3a" [label="/bin/sh -c chmod 755 /start" shape="box"];
  "sha256:2699bc66968357df42b59008cc2873b8ad2ff2bc0ddef30b66ca028a01aa6f69" [label="sha256:2699bc66968357df42b59008cc2873b8ad2ff2bc0ddef30b66ca028a01aa6f69" shape="plaintext"];
  "sha256:f4a5e0707ea3acd85113bc2703501ad747e1756e7cba6f87994ebf8d0b1f1c58" -> "sha256:edfbed3281e995acda1e1c545004c5d9e6296be891cfeccafacc198392ebcdf9" [label=""];
  "sha256:edfbed3281e995acda1e1c545004c5d9e6296be891cfeccafacc198392ebcdf9" -> "sha256:3e6302ca49656090d615df4e1c78adbdf92e2d54f4ed56f5b7d9c2f82d7b3739" [label=""];
  "sha256:7a939689e93c881fba662670f99e31bb6130f220d428bbf5620335f1ba8dd2ab" -> "sha256:3e6302ca49656090d615df4e1c78adbdf92e2d54f4ed56f5b7d9c2f82d7b3739" [label=""];
  "sha256:3e6302ca49656090d615df4e1c78adbdf92e2d54f4ed56f5b7d9c2f82d7b3739" -> "sha256:3c7f7326e2e852c15c8d94484d994f1a68e4668c88e563e9fb72d46af7cc8a33" [label=""];
  "sha256:7a939689e93c881fba662670f99e31bb6130f220d428bbf5620335f1ba8dd2ab" -> "sha256:3c7f7326e2e852c15c8d94484d994f1a68e4668c88e563e9fb72d46af7cc8a33" [label=""];
  "sha256:3c7f7326e2e852c15c8d94484d994f1a68e4668c88e563e9fb72d46af7cc8a33" -> "sha256:97b0cac9e23ae3c83566610b0bd4765a18b82a23c7386c86d4337c565793cd3a" [label=""];
  "sha256:97b0cac9e23ae3c83566610b0bd4765a18b82a23c7386c86d4337c565793cd3a" -> "sha256:2699bc66968357df42b59008cc2873b8ad2ff2bc0ddef30b66ca028a01aa6f69" [label=""];
}

