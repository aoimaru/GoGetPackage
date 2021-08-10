[app/sources/222018696.Dockerfile]
digraph {
  "sha256:648b05dbe15e73d90298aa7031a3c4e457dfdb9f2575095428cf1a3427dd1ad0" [label="docker-image://docker.io/search/solrcloud-zookeeper-docker:latest" shape="ellipse"];
  "sha256:90c6ab9e817cadfaa95d9c13dbfb840e69464a497f3a2da9b501258d3dcc8609" [label="/bin/sh -c touch /zk-data/myid &&\techo ${nodeid} > /zk-data/myid &&\techo \"server.4=zoo4:2888:3888\" >> /zk/conf/zoo.cfg &&\techo \"server.5=zoo5:2888:3888\" >> /zk/conf/zoo.cfg &&\ttouch start.sh &&\techo \"#!/usr/bin/env bash\" >> start.sh &&\techo \"./zk/bin/zkServer.sh start\" >> start.sh &&\techo \"./solr/bin/solr stop\" >> start.sh &&\techo \"./solr/bin/solr -cloud -z zoo4:2181,zoo5:2181 -s /solr-data\" >> start.sh &&\techo \"tail -F /solr/server/logs/solr.log\" >> start.sh &&\tchmod 755 start.sh" shape="box"];
  "sha256:bcfe9c207a7d0f38b3fb1e19b135813796caa33d33d0394e740c3b85969f6888" [label="sha256:bcfe9c207a7d0f38b3fb1e19b135813796caa33d33d0394e740c3b85969f6888" shape="plaintext"];
  "sha256:648b05dbe15e73d90298aa7031a3c4e457dfdb9f2575095428cf1a3427dd1ad0" -> "sha256:90c6ab9e817cadfaa95d9c13dbfb840e69464a497f3a2da9b501258d3dcc8609" [label=""];
  "sha256:90c6ab9e817cadfaa95d9c13dbfb840e69464a497f3a2da9b501258d3dcc8609" -> "sha256:bcfe9c207a7d0f38b3fb1e19b135813796caa33d33d0394e740c3b85969f6888" [label=""];
}

