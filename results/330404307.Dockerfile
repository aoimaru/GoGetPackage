[app/sources/330404307.Dockerfile]
digraph {
  "sha256:a1d914b7539682f3eae1bd3c6f19ea008d247f28fc1812f56998b763df3d2644" [label="docker-image://docker.io/library/jetty:9.4.12-jre8" shape="ellipse"];
  "sha256:78210b0c2cb609e7297f90cb4e8df077d0526f218afd180c6e8a074e6e2976c4" [label="docker-image://docker.io/library/maven:3.6.0-jdk-8" shape="ellipse"];
  "sha256:5062a35576f4ebe25a4be67ea9c1b04e5579ff07ee5709d0611b1fe88ad220bf" [label="/bin/sh -c mkdir -p /tmp/generator2/" shape="box"];
  "sha256:6c133fed11f4a2b52175b3a8a03d5b6030285c8486d6056db464ba04048293bb" [label="local://context" shape="ellipse"];
  "sha256:48867e2c05e86e9cbf3e74271da0535b2de6c3f03a4eb9dc2ae334b778b80758" [label="copy{src=/pom.xml, dest=/tmp/generator2/}" shape="note"];
  "sha256:952b25dfe2cc82d9cd21a6ff2c0704da7a19ba736bab2040c57d546257e1ebd3" [label="copy{src=/src, dest=/tmp/generator2/src/}" shape="note"];
  "sha256:a12c4f38133471444215fb16d8dbc560d5c36a43eb3c945c80fca230ad0f98bf" [label="mkdir{path=/tmp/generator2}" shape="note"];
  "sha256:0b796b2f01f09704ca8b93569368212e312d964cdbf1634f7018d90f65ce70a9" [label="/bin/sh -c mvn package" shape="box"];
  "sha256:9b6b71ad30e0db6dab2eaffdc4ce7ef7a514808dab6f731572cfbb6619fabc92" [label="copy{src=/tmp/generator2/target/org.getaviz.generator*.war, dest=/var/lib/jetty/webapps/root.war}" shape="note"];
  "sha256:47581ba9ecc2ce3f0cb32da9ba5ed3d228290c94bd5f89b414003c769029b62d" [label="/bin/sh -c mkdir -p /var/lib/jetty/logs/" shape="box"];
  "sha256:3cd5bd36183c59b041161f7b928a289fb40e0e3b6ba0fbd196688f8044ebc1a5" [label="/bin/sh -c mkdir -p /var/lib/jetty/databases/" shape="box"];
  "sha256:e9ba68d0ac133292bb47f8c958331e0889655ffd371b77b00d70db15e96782d5" [label="/bin/sh -c mkdir -p /var/lib/jetty/output/" shape="box"];
  "sha256:a802e80982b394ed247afbfc17168a2d721b39c294cee6598e94c7b4489f4f5b" [label="sha256:a802e80982b394ed247afbfc17168a2d721b39c294cee6598e94c7b4489f4f5b" shape="plaintext"];
  "sha256:78210b0c2cb609e7297f90cb4e8df077d0526f218afd180c6e8a074e6e2976c4" -> "sha256:5062a35576f4ebe25a4be67ea9c1b04e5579ff07ee5709d0611b1fe88ad220bf" [label=""];
  "sha256:5062a35576f4ebe25a4be67ea9c1b04e5579ff07ee5709d0611b1fe88ad220bf" -> "sha256:48867e2c05e86e9cbf3e74271da0535b2de6c3f03a4eb9dc2ae334b778b80758" [label=""];
  "sha256:6c133fed11f4a2b52175b3a8a03d5b6030285c8486d6056db464ba04048293bb" -> "sha256:48867e2c05e86e9cbf3e74271da0535b2de6c3f03a4eb9dc2ae334b778b80758" [label=""];
  "sha256:48867e2c05e86e9cbf3e74271da0535b2de6c3f03a4eb9dc2ae334b778b80758" -> "sha256:952b25dfe2cc82d9cd21a6ff2c0704da7a19ba736bab2040c57d546257e1ebd3" [label=""];
  "sha256:6c133fed11f4a2b52175b3a8a03d5b6030285c8486d6056db464ba04048293bb" -> "sha256:952b25dfe2cc82d9cd21a6ff2c0704da7a19ba736bab2040c57d546257e1ebd3" [label=""];
  "sha256:952b25dfe2cc82d9cd21a6ff2c0704da7a19ba736bab2040c57d546257e1ebd3" -> "sha256:a12c4f38133471444215fb16d8dbc560d5c36a43eb3c945c80fca230ad0f98bf" [label=""];
  "sha256:a12c4f38133471444215fb16d8dbc560d5c36a43eb3c945c80fca230ad0f98bf" -> "sha256:0b796b2f01f09704ca8b93569368212e312d964cdbf1634f7018d90f65ce70a9" [label=""];
  "sha256:a1d914b7539682f3eae1bd3c6f19ea008d247f28fc1812f56998b763df3d2644" -> "sha256:9b6b71ad30e0db6dab2eaffdc4ce7ef7a514808dab6f731572cfbb6619fabc92" [label=""];
  "sha256:0b796b2f01f09704ca8b93569368212e312d964cdbf1634f7018d90f65ce70a9" -> "sha256:9b6b71ad30e0db6dab2eaffdc4ce7ef7a514808dab6f731572cfbb6619fabc92" [label=""];
  "sha256:9b6b71ad30e0db6dab2eaffdc4ce7ef7a514808dab6f731572cfbb6619fabc92" -> "sha256:47581ba9ecc2ce3f0cb32da9ba5ed3d228290c94bd5f89b414003c769029b62d" [label=""];
  "sha256:47581ba9ecc2ce3f0cb32da9ba5ed3d228290c94bd5f89b414003c769029b62d" -> "sha256:3cd5bd36183c59b041161f7b928a289fb40e0e3b6ba0fbd196688f8044ebc1a5" [label=""];
  "sha256:3cd5bd36183c59b041161f7b928a289fb40e0e3b6ba0fbd196688f8044ebc1a5" -> "sha256:e9ba68d0ac133292bb47f8c958331e0889655ffd371b77b00d70db15e96782d5" [label=""];
  "sha256:e9ba68d0ac133292bb47f8c958331e0889655ffd371b77b00d70db15e96782d5" -> "sha256:a802e80982b394ed247afbfc17168a2d721b39c294cee6598e94c7b4489f4f5b" [label=""];
}

