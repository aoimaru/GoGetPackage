[app/sources/220624300.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:3984e1f88be78eab755c71ef8230e8856a497d3362dea335434ec7815ea89d4d" [label="local://context" shape="ellipse"];
  "sha256:34f2a890084e66d4c3153219c65d7f9443c4a00deaa53e954f2634f2aeae2efd" [label="copy{src=/local-package/*, dest=/tmp/}" shape="note"];
  "sha256:d2580b3b301f3c43c937499344634732df3e16feb5ed16f60a60a6978e5d5220" [label="/bin/sh -c curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo \"${NEO4J_SHA256} ${NEO4J_TARBALL}\" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}" shape="box"];
  "sha256:01c03dabc4cb4a1cc0022e29980ca5a0ca60fdc56f88ea5cfa1a65a0c52ca42a" [label="mkdir{path=/var/lib/neo4j}" shape="note"];
  "sha256:d36da26974eaf535b7af9075c411e19a8353884c16b787c56289d670b0d0bc6b" [label="/bin/sh -c mv data /data     && ln --symbolic /data" shape="box"];
  "sha256:f730f6a76ca2f0afd5551c07a347c22d71639aafc616a6c45d5788010793c900" [label="copy{src=/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:50eae4bb07c53f5c3301be3342b50cb2db5d30461d04c23bce87c9ed2b4c439d" [label="sha256:50eae4bb07c53f5c3301be3342b50cb2db5d30461d04c23bce87c9ed2b4c439d" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:34f2a890084e66d4c3153219c65d7f9443c4a00deaa53e954f2634f2aeae2efd" [label=""];
  "sha256:3984e1f88be78eab755c71ef8230e8856a497d3362dea335434ec7815ea89d4d" -> "sha256:34f2a890084e66d4c3153219c65d7f9443c4a00deaa53e954f2634f2aeae2efd" [label=""];
  "sha256:34f2a890084e66d4c3153219c65d7f9443c4a00deaa53e954f2634f2aeae2efd" -> "sha256:d2580b3b301f3c43c937499344634732df3e16feb5ed16f60a60a6978e5d5220" [label=""];
  "sha256:d2580b3b301f3c43c937499344634732df3e16feb5ed16f60a60a6978e5d5220" -> "sha256:01c03dabc4cb4a1cc0022e29980ca5a0ca60fdc56f88ea5cfa1a65a0c52ca42a" [label=""];
  "sha256:01c03dabc4cb4a1cc0022e29980ca5a0ca60fdc56f88ea5cfa1a65a0c52ca42a" -> "sha256:d36da26974eaf535b7af9075c411e19a8353884c16b787c56289d670b0d0bc6b" [label=""];
  "sha256:d36da26974eaf535b7af9075c411e19a8353884c16b787c56289d670b0d0bc6b" -> "sha256:f730f6a76ca2f0afd5551c07a347c22d71639aafc616a6c45d5788010793c900" [label=""];
  "sha256:3984e1f88be78eab755c71ef8230e8856a497d3362dea335434ec7815ea89d4d" -> "sha256:f730f6a76ca2f0afd5551c07a347c22d71639aafc616a6c45d5788010793c900" [label=""];
  "sha256:f730f6a76ca2f0afd5551c07a347c22d71639aafc616a6c45d5788010793c900" -> "sha256:50eae4bb07c53f5c3301be3342b50cb2db5d30461d04c23bce87c9ed2b4c439d" [label=""];
}

