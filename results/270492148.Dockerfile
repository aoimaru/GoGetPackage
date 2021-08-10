[app/sources/270492148.Dockerfile]
digraph {
  "sha256:dcfa26b66f852dc7fb767de24109dfb7efc3fb069210554990994039219258f1" [label="local://context" shape="ellipse"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:ebdb58219920e0ff2dc6529525759b67fd54e9ea0b7ad298c071292b20536dcc" [label="/bin/sh -c apt-get update && apt-get install -y autoconf make unzip gnuplot curl git &&     curl -f http://storage.googleapis.com/cloud-bigtable/hbase-dist/hbase-1.2.1/hbase-1.2.1-bin.tar.gz | tar zxf -  &&     mkdir -p hbase-1.2.1/lib/bigtable &&     curl http://repo1.maven.org/maven2/com/google/cloud/bigtable/bigtable-hbase-1.2/0.9.5.1/bigtable-hbase-1.2-0.9.5.1.jar       -f -o hbase-1.2.1/lib/bigtable/bigtable-hbase-1.2-0.9.5.1.jar &&     curl http://repo1.maven.org/maven2/io/netty/netty-tcnative-boringssl-static/1.1.33.Fork19/netty-tcnative-boringssl-static-1.1.33.Fork19.jar       -f -o hbase-1.2.1/lib/netty-tcnative-boringssl-static-1.1.33.Fork19.jar &&     echo 'export HBASE_CLASSPATH=\"$HBASE_HOME/lib/bigtable/bigtable-hbase-1.2-0.9.5.1.jar:$HBASE_HOME/lib/netty-tcnative-boringssl-static-1.1.33.Fork19.jar\"' >> /hbase-1.2.1/conf/hbase-env.sh &&     echo 'export HBASE_OPTS=\"${HBASE_OPTS} -Xms1024m -Xmx2048m\"' >> /hbase-1.2.1/conf/hbase-env.sh" shape="box"];
  "sha256:cfd2516ca4cd44897075978d8762a9471b2987892682f2bbf80d7ea1b7537caa" [label="/bin/sh -c git clone https://github.com/OpenTSDB/opentsdb.git &&     cd opentsdb &&     sh build-bigtable.sh install" shape="box"];
  "sha256:8f414fd6f329650173bcc736586613b166c282b836df9078dbaa2b7805557d72" [label="copy{src=/hbase-site.xml, dest=/hbase-1.2.1/conf}" shape="note"];
  "sha256:92d638953d92663e399163d7cc3d4acf51428a8a3d3bd0179d5a9d57f93013d7" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:09e6f1252126d08b0deda6fcac3d699e7415b8ac87f4e4f0f79b04f33db03bc9" [label="sha256:09e6f1252126d08b0deda6fcac3d699e7415b8ac87f4e4f0f79b04f33db03bc9" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:ebdb58219920e0ff2dc6529525759b67fd54e9ea0b7ad298c071292b20536dcc" [label=""];
  "sha256:ebdb58219920e0ff2dc6529525759b67fd54e9ea0b7ad298c071292b20536dcc" -> "sha256:cfd2516ca4cd44897075978d8762a9471b2987892682f2bbf80d7ea1b7537caa" [label=""];
  "sha256:cfd2516ca4cd44897075978d8762a9471b2987892682f2bbf80d7ea1b7537caa" -> "sha256:8f414fd6f329650173bcc736586613b166c282b836df9078dbaa2b7805557d72" [label=""];
  "sha256:dcfa26b66f852dc7fb767de24109dfb7efc3fb069210554990994039219258f1" -> "sha256:8f414fd6f329650173bcc736586613b166c282b836df9078dbaa2b7805557d72" [label=""];
  "sha256:8f414fd6f329650173bcc736586613b166c282b836df9078dbaa2b7805557d72" -> "sha256:92d638953d92663e399163d7cc3d4acf51428a8a3d3bd0179d5a9d57f93013d7" [label=""];
  "sha256:dcfa26b66f852dc7fb767de24109dfb7efc3fb069210554990994039219258f1" -> "sha256:92d638953d92663e399163d7cc3d4acf51428a8a3d3bd0179d5a9d57f93013d7" [label=""];
  "sha256:92d638953d92663e399163d7cc3d4acf51428a8a3d3bd0179d5a9d57f93013d7" -> "sha256:09e6f1252126d08b0deda6fcac3d699e7415b8ac87f4e4f0f79b04f33db03bc9" [label=""];
}

