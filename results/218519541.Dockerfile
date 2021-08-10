[app/sources/218519541.Dockerfile]
digraph {
  "sha256:9fddeb6a37ae3f9e58732031f69da19b7b4ddb153bf57c3a466947c07785129d" [label="docker-image://docker.io/supermy/cloud-cdh5:snappy" shape="ellipse"];
  "sha256:7b1db7696b7f747cf49083531e9ea6addf8787329c04f1b74a0c2e89ef2dda70" [label="/bin/sh -c apt-get install -y             hbase-master hbase-regionserver hive hive-hbase" shape="box"];
  "sha256:6484fc2d2562baf7e6471d5c6e7aabca04004369b2c5b8132a6fa2476c4753d1" [label="sha256:6484fc2d2562baf7e6471d5c6e7aabca04004369b2c5b8132a6fa2476c4753d1" shape="plaintext"];
  "sha256:9fddeb6a37ae3f9e58732031f69da19b7b4ddb153bf57c3a466947c07785129d" -> "sha256:7b1db7696b7f747cf49083531e9ea6addf8787329c04f1b74a0c2e89ef2dda70" [label=""];
  "sha256:7b1db7696b7f747cf49083531e9ea6addf8787329c04f1b74a0c2e89ef2dda70" -> "sha256:6484fc2d2562baf7e6471d5c6e7aabca04004369b2c5b8132a6fa2476c4753d1" [label=""];
}

