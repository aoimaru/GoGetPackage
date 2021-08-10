[app/sources/252785164.Dockerfile]
digraph {
  "sha256:9e316b771b9f673853d1d60dee5220651b46573d79a5f69547cbe250081e96e8" [label="docker-image://docker.io/cogentlabs/spark:1.6.2" shape="ellipse"];
  "sha256:52ba0a87f500fb5fa1c1fea658391f9495fd2951904e3327ba427ae06467933d" [label="/bin/sh -c apt-get update && apt-get install -y python-pip && apt-get clean && rm -rf /var/lib/apt/lists/* && pip install cassandra-driver" shape="box"];
  "sha256:5c9d85adea7ed62d630d55d98202de3ae2a33322b67b47f6ee1c29edbd4293d8" [label="local://context" shape="ellipse"];
  "sha256:6fb3b8acb86b7cc610335faefd065716b1187075696e86859b3de47350ae9123" [label="copy{src=/dummy.py, dest=/}" shape="note"];
  "sha256:eb1f09f4e6353c7b42b7adc3a97c9f2c04324ebb222f89d49c57200fcac0938a" [label="/bin/sh -c ${SPARK_HOME}/bin/spark-submit \\--packages com.datastax.spark:spark-cassandra-connector_2.10:1.6.2 /dummy.py" shape="box"];
  "sha256:5b4da0e6aceebb6339142c2865f480267c202f8ad17eed6029409c6dc352b25a" [label="sha256:5b4da0e6aceebb6339142c2865f480267c202f8ad17eed6029409c6dc352b25a" shape="plaintext"];
  "sha256:9e316b771b9f673853d1d60dee5220651b46573d79a5f69547cbe250081e96e8" -> "sha256:52ba0a87f500fb5fa1c1fea658391f9495fd2951904e3327ba427ae06467933d" [label=""];
  "sha256:52ba0a87f500fb5fa1c1fea658391f9495fd2951904e3327ba427ae06467933d" -> "sha256:6fb3b8acb86b7cc610335faefd065716b1187075696e86859b3de47350ae9123" [label=""];
  "sha256:5c9d85adea7ed62d630d55d98202de3ae2a33322b67b47f6ee1c29edbd4293d8" -> "sha256:6fb3b8acb86b7cc610335faefd065716b1187075696e86859b3de47350ae9123" [label=""];
  "sha256:6fb3b8acb86b7cc610335faefd065716b1187075696e86859b3de47350ae9123" -> "sha256:eb1f09f4e6353c7b42b7adc3a97c9f2c04324ebb222f89d49c57200fcac0938a" [label=""];
  "sha256:eb1f09f4e6353c7b42b7adc3a97c9f2c04324ebb222f89d49c57200fcac0938a" -> "sha256:5b4da0e6aceebb6339142c2865f480267c202f8ad17eed6029409c6dc352b25a" [label=""];
}

