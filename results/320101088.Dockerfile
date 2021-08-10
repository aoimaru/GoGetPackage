[app/sources/320101088.Dockerfile]
digraph {
  "sha256:be440a3bd4bfadf4b6a0a40aa3b765924d3768761ad340086b7149a4d5e7f6d7" [label="local://context" shape="ellipse"];
  "sha256:1803905fcf8e8360d7e57ef35f36521901c49b9a5c32056b2450e2113bfeba83" [label="docker-image://docker.io/library/java:latest" shape="ellipse"];
  "sha256:3932398135034ce66b786ba5cb2509176b6765c6e42563dd706c0b765955928e" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:e441e5e622000965746a7d2964bc305d5bab97efceb12e4c310ac7d9fee957d4" [label="/bin/sh -c set -x     && apt-get update \t&& apt-get install -yq --no-install-recommends \t\tlibmysql-java     && wget -q -O/tmp/liquibase.tar.gz \"https://github.com/liquibase/liquibase/releases/download/liquibase-parent-${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}-bin.tar.gz\"     && mkdir -p /opt/liquibase     && tar -xzf /tmp/liquibase.tar.gz -C /opt/liquibase     && rm -f /tmp/liquibase.tar.gz     && chmod +x /opt/liquibase/liquibase     && ln -s /opt/liquibase/liquibase /usr/local/bin/     && chmod +x /opt/docker/bin/entrypoint.sh \t&& apt-get clean \t&& rm -r /var/lib/apt/lists/*     && mkdir /liquibase     && ln -sf /opt/docker/bin/entrypoint.sh /entrypoint     && apt-get autoremove -y -f     && apt-get clean -y     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b6851ae3d22740ba221f4a64382f7c749e8d2dab2fd5a72aa32660d159ef2c3c" [label="mkdir{path=/liquibase}" shape="note"];
  "sha256:99a8baabf1904da8e9e02c2ed62414d6a98a01c6c50a0cb2dc04be260268bcc0" [label="sha256:99a8baabf1904da8e9e02c2ed62414d6a98a01c6c50a0cb2dc04be260268bcc0" shape="plaintext"];
  "sha256:1803905fcf8e8360d7e57ef35f36521901c49b9a5c32056b2450e2113bfeba83" -> "sha256:3932398135034ce66b786ba5cb2509176b6765c6e42563dd706c0b765955928e" [label=""];
  "sha256:be440a3bd4bfadf4b6a0a40aa3b765924d3768761ad340086b7149a4d5e7f6d7" -> "sha256:3932398135034ce66b786ba5cb2509176b6765c6e42563dd706c0b765955928e" [label=""];
  "sha256:3932398135034ce66b786ba5cb2509176b6765c6e42563dd706c0b765955928e" -> "sha256:e441e5e622000965746a7d2964bc305d5bab97efceb12e4c310ac7d9fee957d4" [label=""];
  "sha256:e441e5e622000965746a7d2964bc305d5bab97efceb12e4c310ac7d9fee957d4" -> "sha256:b6851ae3d22740ba221f4a64382f7c749e8d2dab2fd5a72aa32660d159ef2c3c" [label=""];
  "sha256:b6851ae3d22740ba221f4a64382f7c749e8d2dab2fd5a72aa32660d159ef2c3c" -> "sha256:99a8baabf1904da8e9e02c2ed62414d6a98a01c6c50a0cb2dc04be260268bcc0" [label=""];
}

