[app/sources/257195756.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:389a8d1582a0e6c9572ace6e5ac79cb620922d10245a2a6445739c1e0e47cdce" [label="/bin/sh -c apk add --no-cache         bash         wget         tar         gzip         ca-certificates         openjdk8-jre-base         supervisor     && echo \"progress = dot:giga\" | tee /etc/wgetrc     && mkdir -p /opt" shape="box"];
  "sha256:320143a12655898f1691b6fee296b273b7288b429b15f3e450ea53f2fc62a5bc" [label="/bin/sh -c wget \"http://apache.mirrors.ovh.net/ftp.apache.org/dist/activemq/${ACTIVEMQ_VERSION}/apache-activemq-${ACTIVEMQ_VERSION}-bin.tar.gz\"             -O /activemq.tgz     && mkdir -p /opt/activemq     && tar -xzf /activemq.tgz --no-same-owner --strip-components=1 -C /opt/activemq     && rm -rf /activemq.tgz" shape="box"];
  "sha256:b0c6e2722c5ee83db9fb036dc3c92c8b38bd4b8d90bf75db6f9c7767e6ed9ca4" [label="/bin/sh -c sed -e '/admin:.*/d'         -e '/user:.*/d'         -i /opt/activemq/conf/jetty-realm.properties     && echo \"$ACTIVEMQ_ADMIN\" >> /opt/activemq/conf/jetty-realm.properties     && echo \"$ACTIVEMQ_USER\" >> /opt/activemq/conf/jetty-realm.properties" shape="box"];
  "sha256:ca2fcb42e44aef06ef3ad7594c4b76fc32e9291b8dd793bcb1a1cad9b0950bf7" [label="sha256:ca2fcb42e44aef06ef3ad7594c4b76fc32e9291b8dd793bcb1a1cad9b0950bf7" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:389a8d1582a0e6c9572ace6e5ac79cb620922d10245a2a6445739c1e0e47cdce" [label=""];
  "sha256:389a8d1582a0e6c9572ace6e5ac79cb620922d10245a2a6445739c1e0e47cdce" -> "sha256:320143a12655898f1691b6fee296b273b7288b429b15f3e450ea53f2fc62a5bc" [label=""];
  "sha256:320143a12655898f1691b6fee296b273b7288b429b15f3e450ea53f2fc62a5bc" -> "sha256:b0c6e2722c5ee83db9fb036dc3c92c8b38bd4b8d90bf75db6f9c7767e6ed9ca4" [label=""];
  "sha256:b0c6e2722c5ee83db9fb036dc3c92c8b38bd4b8d90bf75db6f9c7767e6ed9ca4" -> "sha256:ca2fcb42e44aef06ef3ad7594c4b76fc32e9291b8dd793bcb1a1cad9b0950bf7" [label=""];
}

