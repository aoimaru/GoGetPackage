[app/sources/220624720.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" [label="/bin/sh -c apk add --no-cache --quiet     bash     curl" shape="box"];
  "sha256:cd265665a583f7ce1428bc9edb2e762a0868207aef334f944e71564ee20995a4" [label="local://context" shape="ellipse"];
  "sha256:7ec3d06391e064e29072b5067d1e46228e3caa39a5368862b8d8835fca6b528d" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:0fc1a1b019663bfbfaf8cf92456da39c71ee91d4bd75943f00d6baf2b3b8c876" [label="/bin/sh -c curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256}  ${NEO4J_TARBALL}\" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl" shape="box"];
  "sha256:b52de6fc699125a7b694dd46f3d9ca327b888760947884e9a4d1cf8cc9cd12e5" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:ba16ce213e8386c5a79613565b0f4bb81e830a3d0d0d77b1b93a5ebf7b779190" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:2b3eaa20f0d03771ea068ecdb092072d861342692a85820ead4974051c9b78f5" [label="sha256:2b3eaa20f0d03771ea068ecdb092072d861342692a85820ead4974051c9b78f5" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" [label=""];
  "sha256:c0ee16d68161b60deccb446800ebf0b3948bc268e09cda35df62d0de6fd14173" -> "sha256:7ec3d06391e064e29072b5067d1e46228e3caa39a5368862b8d8835fca6b528d" [label=""];
  "sha256:cd265665a583f7ce1428bc9edb2e762a0868207aef334f944e71564ee20995a4" -> "sha256:7ec3d06391e064e29072b5067d1e46228e3caa39a5368862b8d8835fca6b528d" [label=""];
  "sha256:7ec3d06391e064e29072b5067d1e46228e3caa39a5368862b8d8835fca6b528d" -> "sha256:0fc1a1b019663bfbfaf8cf92456da39c71ee91d4bd75943f00d6baf2b3b8c876" [label=""];
  "sha256:0fc1a1b019663bfbfaf8cf92456da39c71ee91d4bd75943f00d6baf2b3b8c876" -> "sha256:b52de6fc699125a7b694dd46f3d9ca327b888760947884e9a4d1cf8cc9cd12e5" [label=""];
  "sha256:b52de6fc699125a7b694dd46f3d9ca327b888760947884e9a4d1cf8cc9cd12e5" -> "sha256:ba16ce213e8386c5a79613565b0f4bb81e830a3d0d0d77b1b93a5ebf7b779190" [label=""];
  "sha256:cd265665a583f7ce1428bc9edb2e762a0868207aef334f944e71564ee20995a4" -> "sha256:ba16ce213e8386c5a79613565b0f4bb81e830a3d0d0d77b1b93a5ebf7b779190" [label=""];
  "sha256:ba16ce213e8386c5a79613565b0f4bb81e830a3d0d0d77b1b93a5ebf7b779190" -> "sha256:2b3eaa20f0d03771ea068ecdb092072d861342692a85820ead4974051c9b78f5" [label=""];
}

