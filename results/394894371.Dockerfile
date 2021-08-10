[app/sources/394894371.Dockerfile]
digraph {
  "sha256:dacedfa1af9712a682914b98602ff781819bc1a55082245b23906d6a00038f25" [label="docker-image://docker.io/stackbrew/ubuntu:saucy" shape="ellipse"];
  "sha256:9195b091ba5e9b38e0bd81ef4f3cae199e594ae43b9fa535211f1ad1e5b895f3" [label="/bin/sh -c apt-get install -y --force-yes openjdk-7-jre-headless wget" shape="box"];
  "sha256:d260445e505f68dc99e2c2026527bbc0e6505765c1a43c0a015c5f4df9e23ea2" [label="/bin/sh -c mkdir -p /opt/elasticsearch" shape="box"];
  "sha256:1ef1a401b0e95c0095b6147566b9f3c0766113d860e88b9cd79dd7060a7a1412" [label="/bin/sh -c wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.1.tar.gz -O /tmp/elasticsearch-1.0.1.tar.gz" shape="box"];
  "sha256:956ef34edb95a3135759803ec2460451c8a01e2a89ec910f954254ebb5342216" [label="/bin/sh -c tar xfz /tmp/elasticsearch-1.0.1.tar.gz -C /opt/elasticsearch --strip-components=1" shape="box"];
  "sha256:cde09fa1ae9a9c8903989b83f2d5d7165c29208c0dd251f1d67a4ac14e0ba9b1" [label="/bin/sh -c /opt/elasticsearch/bin/plugin -install lmenezes/elasticsearch-kopf" shape="box"];
  "sha256:6639b3154058cc5e3e9e9082dace54b206f4bb1dfa1dc3cc5223d0e4c410d601" [label="/bin/sh -c /opt/elasticsearch/bin/plugin -url http://download.elasticsearch.org/kibana/kibana/kibana-latest.zip -install elasticsearch/kibana3" shape="box"];
  "sha256:65652eea0d1cd9490a75ae5a4552b146f3a8d5ab3badc8973a5f8ab8472269be" [label="sha256:65652eea0d1cd9490a75ae5a4552b146f3a8d5ab3badc8973a5f8ab8472269be" shape="plaintext"];
  "sha256:dacedfa1af9712a682914b98602ff781819bc1a55082245b23906d6a00038f25" -> "sha256:9195b091ba5e9b38e0bd81ef4f3cae199e594ae43b9fa535211f1ad1e5b895f3" [label=""];
  "sha256:9195b091ba5e9b38e0bd81ef4f3cae199e594ae43b9fa535211f1ad1e5b895f3" -> "sha256:d260445e505f68dc99e2c2026527bbc0e6505765c1a43c0a015c5f4df9e23ea2" [label=""];
  "sha256:d260445e505f68dc99e2c2026527bbc0e6505765c1a43c0a015c5f4df9e23ea2" -> "sha256:1ef1a401b0e95c0095b6147566b9f3c0766113d860e88b9cd79dd7060a7a1412" [label=""];
  "sha256:1ef1a401b0e95c0095b6147566b9f3c0766113d860e88b9cd79dd7060a7a1412" -> "sha256:956ef34edb95a3135759803ec2460451c8a01e2a89ec910f954254ebb5342216" [label=""];
  "sha256:956ef34edb95a3135759803ec2460451c8a01e2a89ec910f954254ebb5342216" -> "sha256:cde09fa1ae9a9c8903989b83f2d5d7165c29208c0dd251f1d67a4ac14e0ba9b1" [label=""];
  "sha256:cde09fa1ae9a9c8903989b83f2d5d7165c29208c0dd251f1d67a4ac14e0ba9b1" -> "sha256:6639b3154058cc5e3e9e9082dace54b206f4bb1dfa1dc3cc5223d0e4c410d601" [label=""];
  "sha256:6639b3154058cc5e3e9e9082dace54b206f4bb1dfa1dc3cc5223d0e4c410d601" -> "sha256:65652eea0d1cd9490a75ae5a4552b146f3a8d5ab3badc8973a5f8ab8472269be" [label=""];
}

