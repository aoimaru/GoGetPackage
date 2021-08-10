[app/sources/234462995.Dockerfile]
digraph {
  "sha256:b4ac3dd978d7f9a3b84c9620d66a8ea1034ba42520ba0284beda8168b99e685c" [label="local://context" shape="ellipse"];
  "sha256:44593f412fc40822c646a4e7f2b1d1ff38b9d6d96ae9441bce77ab5d18751dbd" [label="docker-image://docker.io/idoall/ubuntu:16.04" shape="ellipse"];
  "sha256:46d69d8cb41f3f59bad0a6203bdef3190a0981711761a69bc2979ad061c13853" [label="copy{src=/files, dest=/}" shape="note"];
  "sha256:7de9f3f0b91115fc023103fec3b84d8f0ab66c91dfbcb75c7cc925ede78549d7" [label="/bin/sh -c apt-fast update -y     && apt-fast install -y tcl expect unzip zip openjdk-8-jdk" shape="box"];
  "sha256:a1e7c2459de465666e9c48b27f7d1eefad08efd05bdff19ddf9085d9ee021e8c" [label="/bin/sh -c mkdir -p /home/work/_src     && axel -n 10 -o /home/work/_src/jira.bin https://product-downloads.atlassian.com/software/jira/downloads/atlassian-jira-core-7.12.3-x64.bin" shape="box"];
  "sha256:14d8f3f1902a2b59fc7a4e244eec59aa308fa473243fecce57c36445c84c65e4" [label="/bin/sh -c chmod +x /home/work/_src/jira.bin     && expect /home/work/_script/jira-install.sh     && cd /home/work/_src     && curl -Ls https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.47.tar.gz | tar -xz --directory . --strip-components=1 --no-same-owner     && cp -r /home/work/_src/mysql-connector-java-5.1.47-bin.jar /opt/atlassian/jira/atlassian-jira/WEB-INF/lib     && service jira stop" shape="box"];
  "sha256:1659a356beca03ab75b37b2c620c39b7b844e52cfd7803f189f4c4f8108b824f" [label="/bin/sh -c chmod 755 /hooks /home/work/_script/*     && chown -R work:work /home/work/*     && apt-get -y clean     && rm -rf /var/lib/apt/lists/*     && rm -rf /var/cache/apt/archives/apt-fast/*     && rm -rf /home/work/_src/*     && rm -rf /home/work/_script/confluence-install.sh" shape="box"];
  "sha256:5459c5a899291f1a29c603b1c307242e08ff106c481b766d6183b719bd156a3f" [label="sha256:5459c5a899291f1a29c603b1c307242e08ff106c481b766d6183b719bd156a3f" shape="plaintext"];
  "sha256:44593f412fc40822c646a4e7f2b1d1ff38b9d6d96ae9441bce77ab5d18751dbd" -> "sha256:46d69d8cb41f3f59bad0a6203bdef3190a0981711761a69bc2979ad061c13853" [label=""];
  "sha256:b4ac3dd978d7f9a3b84c9620d66a8ea1034ba42520ba0284beda8168b99e685c" -> "sha256:46d69d8cb41f3f59bad0a6203bdef3190a0981711761a69bc2979ad061c13853" [label=""];
  "sha256:46d69d8cb41f3f59bad0a6203bdef3190a0981711761a69bc2979ad061c13853" -> "sha256:7de9f3f0b91115fc023103fec3b84d8f0ab66c91dfbcb75c7cc925ede78549d7" [label=""];
  "sha256:7de9f3f0b91115fc023103fec3b84d8f0ab66c91dfbcb75c7cc925ede78549d7" -> "sha256:a1e7c2459de465666e9c48b27f7d1eefad08efd05bdff19ddf9085d9ee021e8c" [label=""];
  "sha256:a1e7c2459de465666e9c48b27f7d1eefad08efd05bdff19ddf9085d9ee021e8c" -> "sha256:14d8f3f1902a2b59fc7a4e244eec59aa308fa473243fecce57c36445c84c65e4" [label=""];
  "sha256:14d8f3f1902a2b59fc7a4e244eec59aa308fa473243fecce57c36445c84c65e4" -> "sha256:1659a356beca03ab75b37b2c620c39b7b844e52cfd7803f189f4c4f8108b824f" [label=""];
  "sha256:1659a356beca03ab75b37b2c620c39b7b844e52cfd7803f189f4c4f8108b824f" -> "sha256:5459c5a899291f1a29c603b1c307242e08ff106c481b766d6183b719bd156a3f" [label=""];
}

