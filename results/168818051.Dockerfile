[app/sources/168818051.Dockerfile]
digraph {
  "sha256:e8e0fe548b9717b9d632f413c5b9325dd9b4f1d4a416b6508ee653593158deab" [label="docker-image://docker.io/library/amazoncorretto:11@sha256:75558b1ec7aa332e62f57f708fb82aa1a648a4e4840ada287a00b8c656e066a0" shape="ellipse"];
  "sha256:7f81c50a7c976c30350506d42692941f77222c6fcff39050d37fad42c6e19156" [label="/bin/sh -c yum install -y tar which gzip" shape="box"];
  "sha256:3603513a489d7a83df477a27dabe36b74ddf1a3f623313f0d3ba81017c758abd" [label="/bin/sh -c mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo \"${SHA}  /tmp/apache-maven.tar.gz\" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:961b76651448e913154e5a7872cebec643627668d70be66f435caa16e62e0433" [label="local://context" shape="ellipse"];
  "sha256:1bbf79a41041665b432b64eff126efb6099b53cf4c45e9f2b0efd0e584216104" [label="copy{src=/mvn-entrypoint.sh, dest=/usr/local/bin/mvn-entrypoint.sh}" shape="note"];
  "sha256:f1f88cab395a305e5b6d34c67d48ad594f4179254906cd29a6dfe52fa66856c0" [label="copy{src=/settings-docker.xml, dest=/usr/share/maven/ref/}" shape="note"];
  "sha256:b6377b879b01ce3177cd1dccdf03fce98dd31178fada6f70c05d59f2d294862b" [label="sha256:b6377b879b01ce3177cd1dccdf03fce98dd31178fada6f70c05d59f2d294862b" shape="plaintext"];
  "sha256:e8e0fe548b9717b9d632f413c5b9325dd9b4f1d4a416b6508ee653593158deab" -> "sha256:7f81c50a7c976c30350506d42692941f77222c6fcff39050d37fad42c6e19156" [label=""];
  "sha256:7f81c50a7c976c30350506d42692941f77222c6fcff39050d37fad42c6e19156" -> "sha256:3603513a489d7a83df477a27dabe36b74ddf1a3f623313f0d3ba81017c758abd" [label=""];
  "sha256:3603513a489d7a83df477a27dabe36b74ddf1a3f623313f0d3ba81017c758abd" -> "sha256:1bbf79a41041665b432b64eff126efb6099b53cf4c45e9f2b0efd0e584216104" [label=""];
  "sha256:961b76651448e913154e5a7872cebec643627668d70be66f435caa16e62e0433" -> "sha256:1bbf79a41041665b432b64eff126efb6099b53cf4c45e9f2b0efd0e584216104" [label=""];
  "sha256:1bbf79a41041665b432b64eff126efb6099b53cf4c45e9f2b0efd0e584216104" -> "sha256:f1f88cab395a305e5b6d34c67d48ad594f4179254906cd29a6dfe52fa66856c0" [label=""];
  "sha256:961b76651448e913154e5a7872cebec643627668d70be66f435caa16e62e0433" -> "sha256:f1f88cab395a305e5b6d34c67d48ad594f4179254906cd29a6dfe52fa66856c0" [label=""];
  "sha256:f1f88cab395a305e5b6d34c67d48ad594f4179254906cd29a6dfe52fa66856c0" -> "sha256:b6377b879b01ce3177cd1dccdf03fce98dd31178fada6f70c05d59f2d294862b" [label=""];
}

