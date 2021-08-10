[app/sources/169187553.Dockerfile]
digraph {
  "sha256:c5fdd14bca77d413139733c90c46e42d502cb49661b715012635f213a3860067" [label="docker-image://docker.io/supermy/ap-jre:latest" shape="ellipse"];
  "sha256:7310d15d52f98979b9d9ff3bf4710a9cbaa6a293dcd7efb1b78501da60eeb0d3" [label="/bin/sh -c wget -q -O - http://mirror.vorboss.net/apache/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz | tar -xzf - -C /opt      && mv /opt/zookeeper-3.4.6/conf/zoo_sample.cfg /opt/zookeeper-3.4.6/conf/zoo.cfg" shape="box"];
  "sha256:0e4832ae0c05f0f64af76878838d088367798199c3b513596ab3165ad92837e8" [label="/bin/sh -c sed  -i \"s|/tmp/zookeeper|$ZK_HOME/data|g\" $ZK_HOME/conf/zoo.cfg; mkdir $ZK_HOME/data" shape="box"];
  "sha256:a6d8ec5cc77aa88f77112107e370f8d3af66407155b79a8443722e8618058f3f" [label="mkdir{path=/opt/zookeeper-3.4.6}" shape="note"];
  "sha256:2ebea4ec5d984fc4ef8346a20a181514a432d9459976a269e9121f1f24040cd0" [label="local://context" shape="ellipse"];
  "sha256:0580993547ac21b1ca09c2253b464679b61a2a040b4390358f745a8a9f80cc67" [label="copy{src=/start-zk.sh, dest=/usr/local/bin/start-zk.sh}" shape="note"];
  "sha256:a6edee05ae2d049a51e875e83b5d13ae5d4533a4f41e4aab139c463dcfbc525a" [label="/bin/sh -c chmod +x /usr/local/bin/start-zk.sh" shape="box"];
  "sha256:3eba3b732e864a4102d29956ac8b214a1ac16d4464c8b826ddeba0edcbe6a97e" [label="sha256:3eba3b732e864a4102d29956ac8b214a1ac16d4464c8b826ddeba0edcbe6a97e" shape="plaintext"];
  "sha256:c5fdd14bca77d413139733c90c46e42d502cb49661b715012635f213a3860067" -> "sha256:7310d15d52f98979b9d9ff3bf4710a9cbaa6a293dcd7efb1b78501da60eeb0d3" [label=""];
  "sha256:7310d15d52f98979b9d9ff3bf4710a9cbaa6a293dcd7efb1b78501da60eeb0d3" -> "sha256:0e4832ae0c05f0f64af76878838d088367798199c3b513596ab3165ad92837e8" [label=""];
  "sha256:0e4832ae0c05f0f64af76878838d088367798199c3b513596ab3165ad92837e8" -> "sha256:a6d8ec5cc77aa88f77112107e370f8d3af66407155b79a8443722e8618058f3f" [label=""];
  "sha256:a6d8ec5cc77aa88f77112107e370f8d3af66407155b79a8443722e8618058f3f" -> "sha256:0580993547ac21b1ca09c2253b464679b61a2a040b4390358f745a8a9f80cc67" [label=""];
  "sha256:2ebea4ec5d984fc4ef8346a20a181514a432d9459976a269e9121f1f24040cd0" -> "sha256:0580993547ac21b1ca09c2253b464679b61a2a040b4390358f745a8a9f80cc67" [label=""];
  "sha256:0580993547ac21b1ca09c2253b464679b61a2a040b4390358f745a8a9f80cc67" -> "sha256:a6edee05ae2d049a51e875e83b5d13ae5d4533a4f41e4aab139c463dcfbc525a" [label=""];
  "sha256:a6edee05ae2d049a51e875e83b5d13ae5d4533a4f41e4aab139c463dcfbc525a" -> "sha256:3eba3b732e864a4102d29956ac8b214a1ac16d4464c8b826ddeba0edcbe6a97e" [label=""];
}

