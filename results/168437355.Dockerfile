[app/sources/168437355.Dockerfile]
digraph {
  "sha256:bb78e90c83dbed77b6bd9e52f6e13ed9aa88ec56711d3ba2055fb140cc937568" [label="docker-image://docker.io/library/java:openjdk-8-jre" shape="ellipse"];
  "sha256:ac76a50c55ad0f1a081f5639ba4174e757d06d1be89250e60bf99b8e3945c6d7" [label="local://context" shape="ellipse"];
  "sha256:aaf51f71af1a64233b4f2bec1e9663048da7d5b2fb3682b1b9f02818a08cb4a4" [label="copy{src=/data-generator.jar, dest=/opt/omh-sample-data-generator/}" shape="note"];
  "sha256:caa1f1708cfd11167855aa6589467f4f79649092e5977e6b6687c9b6e8109677" [label="/bin/sh -c mkdir -p $BASE_DIR/mount" shape="box"];
  "sha256:abf6eb2fff179c55a542d19f75d5cf9b0e7f899ecaad0f965547abda69b0ca79" [label="mkdir{path=/opt/omh-sample-data-generator/mount}" shape="note"];
  "sha256:693919237a732499b608c774dd53e8d7f541f9073ce311f195e0ba48e1dd032d" [label="sha256:693919237a732499b608c774dd53e8d7f541f9073ce311f195e0ba48e1dd032d" shape="plaintext"];
  "sha256:bb78e90c83dbed77b6bd9e52f6e13ed9aa88ec56711d3ba2055fb140cc937568" -> "sha256:aaf51f71af1a64233b4f2bec1e9663048da7d5b2fb3682b1b9f02818a08cb4a4" [label=""];
  "sha256:ac76a50c55ad0f1a081f5639ba4174e757d06d1be89250e60bf99b8e3945c6d7" -> "sha256:aaf51f71af1a64233b4f2bec1e9663048da7d5b2fb3682b1b9f02818a08cb4a4" [label=""];
  "sha256:aaf51f71af1a64233b4f2bec1e9663048da7d5b2fb3682b1b9f02818a08cb4a4" -> "sha256:caa1f1708cfd11167855aa6589467f4f79649092e5977e6b6687c9b6e8109677" [label=""];
  "sha256:caa1f1708cfd11167855aa6589467f4f79649092e5977e6b6687c9b6e8109677" -> "sha256:abf6eb2fff179c55a542d19f75d5cf9b0e7f899ecaad0f965547abda69b0ca79" [label=""];
  "sha256:abf6eb2fff179c55a542d19f75d5cf9b0e7f899ecaad0f965547abda69b0ca79" -> "sha256:693919237a732499b608c774dd53e8d7f541f9073ce311f195e0ba48e1dd032d" [label=""];
}

