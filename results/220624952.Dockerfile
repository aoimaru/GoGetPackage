[app/sources/220624952.Dockerfile]
digraph {
  "sha256:0fa9d77ffba4c0cfb36bec29d2e0b02d36226b626b50f29355d5a97517be8e0b" [label="docker-image://docker.io/library/openjdk:8-jre-alpine@sha256:f362b165b870ef129cbe730f29065ff37399c0aa8bcab3e44b51c302938c9193" shape="ellipse"];
  "sha256:c914274c50323acc48f18d4f75145ff500fee5baa003b3001276482c47b54d4d" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl" shape="box"];
  "sha256:9434ea04d56a9e8d035271ad58a0e58766bbabc7e9be3490586704e7c70d1e85" [label="local://context" shape="ellipse"];
  "sha256:b476cc368b7ee9edc9790ad78b1919bf7115adee673a2fb8419466f1a2b2dce0" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:97ca4827001ed9d5203aa07f5a59f082ed24102b75534488aa5ff2bfd263f95d" [label="/bin/sh -c curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl" shape="box"];
  "sha256:d890edec2811a9a5b02e5d49591c1cfdb988637220efa607f2c935578d2749ee" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:da4bff421aeff52596018723cfd3a19a931d550a2120ad8e5035c7583f30aa53" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:ad4287206c0d0b2f9b40c877e50eeb4d4e6078ea8ea7e3e6cc8c7e2e86fdba97" [label="sha256:ad4287206c0d0b2f9b40c877e50eeb4d4e6078ea8ea7e3e6cc8c7e2e86fdba97" shape="plaintext"];
  "sha256:0fa9d77ffba4c0cfb36bec29d2e0b02d36226b626b50f29355d5a97517be8e0b" -> "sha256:c914274c50323acc48f18d4f75145ff500fee5baa003b3001276482c47b54d4d" [label=""];
  "sha256:c914274c50323acc48f18d4f75145ff500fee5baa003b3001276482c47b54d4d" -> "sha256:b476cc368b7ee9edc9790ad78b1919bf7115adee673a2fb8419466f1a2b2dce0" [label=""];
  "sha256:9434ea04d56a9e8d035271ad58a0e58766bbabc7e9be3490586704e7c70d1e85" -> "sha256:b476cc368b7ee9edc9790ad78b1919bf7115adee673a2fb8419466f1a2b2dce0" [label=""];
  "sha256:b476cc368b7ee9edc9790ad78b1919bf7115adee673a2fb8419466f1a2b2dce0" -> "sha256:97ca4827001ed9d5203aa07f5a59f082ed24102b75534488aa5ff2bfd263f95d" [label=""];
  "sha256:97ca4827001ed9d5203aa07f5a59f082ed24102b75534488aa5ff2bfd263f95d" -> "sha256:d890edec2811a9a5b02e5d49591c1cfdb988637220efa607f2c935578d2749ee" [label=""];
  "sha256:d890edec2811a9a5b02e5d49591c1cfdb988637220efa607f2c935578d2749ee" -> "sha256:da4bff421aeff52596018723cfd3a19a931d550a2120ad8e5035c7583f30aa53" [label=""];
  "sha256:9434ea04d56a9e8d035271ad58a0e58766bbabc7e9be3490586704e7c70d1e85" -> "sha256:da4bff421aeff52596018723cfd3a19a931d550a2120ad8e5035c7583f30aa53" [label=""];
  "sha256:da4bff421aeff52596018723cfd3a19a931d550a2120ad8e5035c7583f30aa53" -> "sha256:ad4287206c0d0b2f9b40c877e50eeb4d4e6078ea8ea7e3e6cc8c7e2e86fdba97" [label=""];
}

