[app/sources/479925170.Dockerfile]
digraph {
  "sha256:ca246f31efb8f57ddf8a1de55860dc532fc9a788a405dbc6118ef47b54877911" [label="docker-image://docker.io/daunnc/geodocker-hadoop:latest" shape="ellipse"];
  "sha256:fe7e4f44bbbcbd50a816839f9fb0fc7d2ff55c04afae71760637eeefe3941641" [label="/bin/sh -c set -x &&     mkdir -p $SPARK_HOME $SPARK_CONF_DIR &&     curl -# http://d3kbcqa49mib13.cloudfront.net/spark-1.6.1-bin-hadoop2.6.tgz | tar -xz -C ${SPARK_HOME} --strip-components=1" shape="box"];
  "sha256:f5b3eddd3a543f8a648ce489e2a14eb147f54bde3c46c57315b0dc85ad3d7c88" [label="local://context" shape="ellipse"];
  "sha256:498e2396c310947545e8642ddd5d884d431a914c45200f25572e53e902de278f" [label="copy{src=/fs, dest=/}" shape="note"];
  "sha256:12c181982bab676f4151aea52ae981ad3b2aa5e1f1b8c0d472ff20bc157ce0df" [label="/bin/sh -c mkdir -p /data/spark" shape="box"];
  "sha256:ec5fe26e4321da96e28df60ab7e08992d8d22852bd01f924878ab1b1fe51ee91" [label="mkdir{path=/opt/spark}" shape="note"];
  "sha256:557b9148708a36814e03dcb11fb091a0c16e008a9bbcc1a2e534a1da02907ad3" [label="sha256:557b9148708a36814e03dcb11fb091a0c16e008a9bbcc1a2e534a1da02907ad3" shape="plaintext"];
  "sha256:ca246f31efb8f57ddf8a1de55860dc532fc9a788a405dbc6118ef47b54877911" -> "sha256:fe7e4f44bbbcbd50a816839f9fb0fc7d2ff55c04afae71760637eeefe3941641" [label=""];
  "sha256:fe7e4f44bbbcbd50a816839f9fb0fc7d2ff55c04afae71760637eeefe3941641" -> "sha256:498e2396c310947545e8642ddd5d884d431a914c45200f25572e53e902de278f" [label=""];
  "sha256:f5b3eddd3a543f8a648ce489e2a14eb147f54bde3c46c57315b0dc85ad3d7c88" -> "sha256:498e2396c310947545e8642ddd5d884d431a914c45200f25572e53e902de278f" [label=""];
  "sha256:498e2396c310947545e8642ddd5d884d431a914c45200f25572e53e902de278f" -> "sha256:12c181982bab676f4151aea52ae981ad3b2aa5e1f1b8c0d472ff20bc157ce0df" [label=""];
  "sha256:12c181982bab676f4151aea52ae981ad3b2aa5e1f1b8c0d472ff20bc157ce0df" -> "sha256:ec5fe26e4321da96e28df60ab7e08992d8d22852bd01f924878ab1b1fe51ee91" [label=""];
  "sha256:ec5fe26e4321da96e28df60ab7e08992d8d22852bd01f924878ab1b1fe51ee91" -> "sha256:557b9148708a36814e03dcb11fb091a0c16e008a9bbcc1a2e534a1da02907ad3" [label=""];
}

