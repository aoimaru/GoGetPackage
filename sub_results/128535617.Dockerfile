[app/sub_sources/128535617.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:75b2d0c136ebe604189efee9e89551c0c174e472771fbec6dc83d6c84cb4b888" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python2.7   git   cmake   sudo   gdb   xz-utils   g++-sparc64-linux-gnu   libssl-dev   pkg-config" shape="box"];
  "sha256:ca3062358b5244d80b6d3495ce217b891b4dbca81a8ff7195498e2c8818bbd59" [label="local://context" shape="ellipse"];
  "sha256:37ebaf8af26470e7a3599b51d13ffb099b9ed12708cb67b22fd8da46b2e7f393" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:78bafb9efe78c0b50dd78902afec99a4d222ef9ccd4e3ef0fa445483037ece27" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:9c195984e80171108b5ae0c72e9ee2098cff2c04798e955e931824f560bff20d" [label="sha256:9c195984e80171108b5ae0c72e9ee2098cff2c04798e955e931824f560bff20d" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:75b2d0c136ebe604189efee9e89551c0c174e472771fbec6dc83d6c84cb4b888" [label=""];
  "sha256:75b2d0c136ebe604189efee9e89551c0c174e472771fbec6dc83d6c84cb4b888" -> "sha256:37ebaf8af26470e7a3599b51d13ffb099b9ed12708cb67b22fd8da46b2e7f393" [label=""];
  "sha256:ca3062358b5244d80b6d3495ce217b891b4dbca81a8ff7195498e2c8818bbd59" -> "sha256:37ebaf8af26470e7a3599b51d13ffb099b9ed12708cb67b22fd8da46b2e7f393" [label=""];
  "sha256:37ebaf8af26470e7a3599b51d13ffb099b9ed12708cb67b22fd8da46b2e7f393" -> "sha256:78bafb9efe78c0b50dd78902afec99a4d222ef9ccd4e3ef0fa445483037ece27" [label=""];
  "sha256:78bafb9efe78c0b50dd78902afec99a4d222ef9ccd4e3ef0fa445483037ece27" -> "sha256:9c195984e80171108b5ae0c72e9ee2098cff2c04798e955e931824f560bff20d" [label=""];
}

