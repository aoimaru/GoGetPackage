[app/sources/192953879.Dockerfile]
digraph {
  "sha256:91be496aefac86677a79f92514cd333ea20b5ac165ed9895f34be9df94fe63ad" [label="local://context" shape="ellipse"];
  "sha256:1886e855ab4a9f8b8d4b52a61dab43cfdcba45f422d66804ce1744ef22de91bc" [label="docker-image://docker.io/nimmis/java:oracle-8-jdk" shape="ellipse"];
  "sha256:751379d9aab7d08a9bef67611900500918a67e723b57bc8cfd92926da669cbaf" [label="/bin/sh -c mkdir -p \"$CATALINA_HOME\"" shape="box"];
  "sha256:d47d87802e294d9e8f430505c147e063b48e62cb9808fae12681d115454e6608" [label="/bin/sh -c cd $CATALINA_HOME \t&&wget -O tomcat.tar.gz $TOMCAT_TGZ_URL \t&& tar -xvf tomcat.tar.gz --strip-components=1 \t&& cd $CATALINA_HOME \t&& rm bin/*.bat \t&& rm tomcat.tar.gz* && rm -fr /usr/local/tomcat/webapps/ROOT \t&& rm -fr /usr/local/tomcat/webapps/docs /usr/local/tomcat/webapps/host-manager /usr/local/tomcat/webapps/manager /usr/local/tomcat/webapps/examples" shape="box"];
  "sha256:a9c85b2aac1912d55298976057e91f464a9eee65241d70c9d53f1c06ce953999" [label="/bin/sh -c mkdir /tmp2 && cd /tmp2   && curl -sSL $MAVEN_TGZ_URL | tar xzf - -C /usr/share   && mv /usr/share/apache-maven-3.3.9 /usr/share/maven   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn   && curl -sSL https://github.com/wendal/nutz-book-project/archive/master.tar.gz | tar xzf - -C /tmp2   && cd /tmp2 && ls -l  && cd nutz-book-project-master   && mvn -Dmaven.test.skip=true clean package   && mkdir -p /usr/local/tomcat/webapps/ROOT   && cp -r target/nutzbook-2.9.5/* /usr/local/tomcat/webapps/ROOT/   && find /usr/local/tomcat/webapps/ROOT/   && cd /   && rm -fr /tmp2 /usr/share/maven /usr/bin/mvn ~/.m2" shape="box"];
  "sha256:1f897d9740e844cecc07b2fb1c0217cb9bef494981bae692cf67ffa707b194a1" [label="mkdir{path=/usr/local/tomcat}" shape="note"];
  "sha256:0f09c837ffd9970e46197d7eae169a814a99401236a96cb1424c5dbf2260851d" [label="copy{src=/docker-entrypoint.py, dest=/entrypoint.py}" shape="note"];
  "sha256:ff3163a5fb461dec3eed9e0165f55eff016f4e0942cc366497cd9c4e10f3f3d2" [label="sha256:ff3163a5fb461dec3eed9e0165f55eff016f4e0942cc366497cd9c4e10f3f3d2" shape="plaintext"];
  "sha256:1886e855ab4a9f8b8d4b52a61dab43cfdcba45f422d66804ce1744ef22de91bc" -> "sha256:751379d9aab7d08a9bef67611900500918a67e723b57bc8cfd92926da669cbaf" [label=""];
  "sha256:751379d9aab7d08a9bef67611900500918a67e723b57bc8cfd92926da669cbaf" -> "sha256:d47d87802e294d9e8f430505c147e063b48e62cb9808fae12681d115454e6608" [label=""];
  "sha256:d47d87802e294d9e8f430505c147e063b48e62cb9808fae12681d115454e6608" -> "sha256:a9c85b2aac1912d55298976057e91f464a9eee65241d70c9d53f1c06ce953999" [label=""];
  "sha256:a9c85b2aac1912d55298976057e91f464a9eee65241d70c9d53f1c06ce953999" -> "sha256:1f897d9740e844cecc07b2fb1c0217cb9bef494981bae692cf67ffa707b194a1" [label=""];
  "sha256:1f897d9740e844cecc07b2fb1c0217cb9bef494981bae692cf67ffa707b194a1" -> "sha256:0f09c837ffd9970e46197d7eae169a814a99401236a96cb1424c5dbf2260851d" [label=""];
  "sha256:91be496aefac86677a79f92514cd333ea20b5ac165ed9895f34be9df94fe63ad" -> "sha256:0f09c837ffd9970e46197d7eae169a814a99401236a96cb1424c5dbf2260851d" [label=""];
  "sha256:0f09c837ffd9970e46197d7eae169a814a99401236a96cb1424c5dbf2260851d" -> "sha256:ff3163a5fb461dec3eed9e0165f55eff016f4e0942cc366497cd9c4e10f3f3d2" [label=""];
}

