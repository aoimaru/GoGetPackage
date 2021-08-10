[app/sources/191400955.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:55ebeaf0718fed6a4707cced9c8bb28b1fd67e83e987155115a02522acc22793" [label="/bin/sh -c /bin/bash -c \"set -e; echo \\\"Installing swift ${swift}\\\"; apt-get update && apt-get install -y curl clang libicu-dev libbsd-dev git && curl -v \\\"https://swift.org/builds/swift-${swift}-release/ubuntu1804/swift-${swift}-RELEASE/swift-${swift}-RELEASE-ubuntu18.04.tar.gz\\\" > /tmp/swift.tar.gz; tar -xzf /tmp/swift.tar.gz -C /tmp; swift -version;\"" shape="box"];
  "sha256:0064d8236e9fcfe3930ca69ff3d8d2116b9e1c109888b6b99cd2f5808f2bf123" [label="sha256:0064d8236e9fcfe3930ca69ff3d8d2116b9e1c109888b6b99cd2f5808f2bf123" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:55ebeaf0718fed6a4707cced9c8bb28b1fd67e83e987155115a02522acc22793" [label=""];
  "sha256:55ebeaf0718fed6a4707cced9c8bb28b1fd67e83e987155115a02522acc22793" -> "sha256:0064d8236e9fcfe3930ca69ff3d8d2116b9e1c109888b6b99cd2f5808f2bf123" [label=""];
}

