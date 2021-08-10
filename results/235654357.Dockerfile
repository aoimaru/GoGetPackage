[app/sources/235654357.Dockerfile]
digraph {
  "sha256:56ab2454e855abc7ef05210a597e37c36f9a99c0c470076fe72e6c61fe5f1837" [label="docker-image://docker.io/library/tomcat:8.5" shape="ellipse"];
  "sha256:ba3c6bc639dbf5080b5533f0aaf3966af9aac7b3d691931356a519c989f4c063" [label="/bin/sh -c set -ex     && rm -rf ${WEB_DIR}/*     && chmod a+x /usr/local/tomcat/bin/*.sh         && wget http://archive.apache.org/dist/struts/${ST2_VERSION}/struts-${ST2_VERSION}-apps.zip -O /tmp/struts-${ST2_VERSION}-apps.zip     && unzip /tmp/struts-${ST2_VERSION}-apps.zip -d /tmp/     && mv /tmp/struts-${ST2_VERSION}/apps/struts2-showcase.war ${WEB_DIR}/ROOT.war      && rm -rf /tmp/struts*     && sed -i 's/securerandom\\.source=file:\\/dev\\/random/securerandom.source=file:\\/dev\\/.\\/urandom/g' $JAVA_HOME/lib/security/java.security" shape="box"];
  "sha256:402ba96cf7ac4d9870b41ba9d3036b4c6b0d29d660147fe942f6b8f86c0683dd" [label="sha256:402ba96cf7ac4d9870b41ba9d3036b4c6b0d29d660147fe942f6b8f86c0683dd" shape="plaintext"];
  "sha256:56ab2454e855abc7ef05210a597e37c36f9a99c0c470076fe72e6c61fe5f1837" -> "sha256:ba3c6bc639dbf5080b5533f0aaf3966af9aac7b3d691931356a519c989f4c063" [label=""];
  "sha256:ba3c6bc639dbf5080b5533f0aaf3966af9aac7b3d691931356a519c989f4c063" -> "sha256:402ba96cf7ac4d9870b41ba9d3036b4c6b0d29d660147fe942f6b8f86c0683dd" [label=""];
}

