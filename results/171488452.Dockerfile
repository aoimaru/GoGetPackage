[app/sources/171488452.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:50e69d23bab04f02fbd8dea4039762d710af480310b460f667fd4075d43152b9" [label="/bin/sh -c set -x &&     curl -s -S https://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz | tar xvz -C /opt &&     ln -s /opt/$ACTIVEMQ $ACTIVEMQ_HOME &&     useradd -r -M -d $ACTIVEMQ_HOME activemq &&     chown -R activemq:activemq /opt/$ACTIVEMQ &&     chown -h activemq:activemq $ACTIVEMQ_HOME" shape="box"];
  "sha256:aef632694238d7eb27b8f84000b55fd96ef9220b4d593e80e037e7b545d33100" [label="mkdir{path=/opt/activemq}" shape="note"];
  "sha256:7885b454036c8a58a6dd951e57e87e93816f20a03ba4bac2cd878069ac441d27" [label="sha256:7885b454036c8a58a6dd951e57e87e93816f20a03ba4bac2cd878069ac441d27" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:50e69d23bab04f02fbd8dea4039762d710af480310b460f667fd4075d43152b9" [label=""];
  "sha256:50e69d23bab04f02fbd8dea4039762d710af480310b460f667fd4075d43152b9" -> "sha256:aef632694238d7eb27b8f84000b55fd96ef9220b4d593e80e037e7b545d33100" [label=""];
  "sha256:aef632694238d7eb27b8f84000b55fd96ef9220b4d593e80e037e7b545d33100" -> "sha256:7885b454036c8a58a6dd951e57e87e93816f20a03ba4bac2cd878069ac441d27" [label=""];
}

