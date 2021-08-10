[app/sources/199128071.Dockerfile]
digraph {
  "sha256:692dc52c73d4e352b75aa41f71732ecdbdf2cf8840081347668cee00a488af37" [label="docker-image://docker.io/davidcaste/alpine-java-unlimited-jce:jre7" shape="ellipse"];
  "sha256:a1fdbf1f3cf76bbfb18c90d6553123a8b5a821700a733117f7e408582b0fba29" [label="/bin/sh -c apk upgrade --update &&     apk add --update curl &&     curl -jksSL -o /tmp/apache-tomcat.tar.gz http://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz &&     gunzip /tmp/apache-tomcat.tar.gz &&     tar -C /opt -xf /tmp/apache-tomcat.tar &&     ln -s /opt/apache-tomcat-${TOMCAT_VERSION} ${TOMCAT_HOME} &&     rm -rf ${TOMCAT_HOME}/webapps/* &&     apk del curl &&     rm -rf /tmp/* /var/cache/apk/*" shape="box"];
  "sha256:34ad80f35c533395eeca279694546f8b2f9c5248c9c7038fb8d3de8f286fb803" [label="local://context" shape="ellipse"];
  "sha256:76eeed777e7ea990ee6a06fa11e57d4abf945701c8da038d2c0ee262ee06ff3a" [label="copy{src=/logging.properties, dest=/opt/tomcat/conf/logging.properties}" shape="note"];
  "sha256:c6c28aca8fc9ca0832326b19a3a7aedf977f062e9e7caf0e599c8da6ae132392" [label="copy{src=/server.xml, dest=/opt/tomcat/conf/server.xml}" shape="note"];
  "sha256:e4c782da5e81fb7dcb601e21cd9c63ad102dfef29e52c6c82ede8d2c754c78e5" [label="sha256:e4c782da5e81fb7dcb601e21cd9c63ad102dfef29e52c6c82ede8d2c754c78e5" shape="plaintext"];
  "sha256:692dc52c73d4e352b75aa41f71732ecdbdf2cf8840081347668cee00a488af37" -> "sha256:a1fdbf1f3cf76bbfb18c90d6553123a8b5a821700a733117f7e408582b0fba29" [label=""];
  "sha256:a1fdbf1f3cf76bbfb18c90d6553123a8b5a821700a733117f7e408582b0fba29" -> "sha256:76eeed777e7ea990ee6a06fa11e57d4abf945701c8da038d2c0ee262ee06ff3a" [label=""];
  "sha256:34ad80f35c533395eeca279694546f8b2f9c5248c9c7038fb8d3de8f286fb803" -> "sha256:76eeed777e7ea990ee6a06fa11e57d4abf945701c8da038d2c0ee262ee06ff3a" [label=""];
  "sha256:76eeed777e7ea990ee6a06fa11e57d4abf945701c8da038d2c0ee262ee06ff3a" -> "sha256:c6c28aca8fc9ca0832326b19a3a7aedf977f062e9e7caf0e599c8da6ae132392" [label=""];
  "sha256:34ad80f35c533395eeca279694546f8b2f9c5248c9c7038fb8d3de8f286fb803" -> "sha256:c6c28aca8fc9ca0832326b19a3a7aedf977f062e9e7caf0e599c8da6ae132392" [label=""];
  "sha256:c6c28aca8fc9ca0832326b19a3a7aedf977f062e9e7caf0e599c8da6ae132392" -> "sha256:e4c782da5e81fb7dcb601e21cd9c63ad102dfef29e52c6c82ede8d2c754c78e5" [label=""];
}

