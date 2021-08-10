[app/sources/291179095.Dockerfile]
digraph {
  "sha256:9fcedc6223523d23d21cf6f4e5bc6b5ccc7dacb2c783936c46f7ba0fda169d40" [label="docker-image://docker.io/library/openjdk:13-ea-17-jdk" shape="ellipse"];
  "sha256:2db156bf67050b6418889696e2f386ed1482e097ab8ef43be5e79275ad128d75" [label="/bin/sh -c mkdir -p opt/dynamodb" shape="box"];
  "sha256:6fa0cd839fea702cbc0e1b808f5dd7194196ad00c8203ec9113b671d78d18bf8" [label="mkdir{path=/opt/dynamodb}" shape="note"];
  "sha256:242406ef0d65f382cde8acf6710c7a620e8ed0740a5eb2c2191f83adaf983cea" [label="/bin/sh -c wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz -q -O - | tar -xz || curl -L http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz | tar xz" shape="box"];
  "sha256:08d431644f1bcbeb032d5f86384bc4f2dc050abc0718aa19e807522734adf341" [label="sha256:08d431644f1bcbeb032d5f86384bc4f2dc050abc0718aa19e807522734adf341" shape="plaintext"];
  "sha256:9fcedc6223523d23d21cf6f4e5bc6b5ccc7dacb2c783936c46f7ba0fda169d40" -> "sha256:2db156bf67050b6418889696e2f386ed1482e097ab8ef43be5e79275ad128d75" [label=""];
  "sha256:2db156bf67050b6418889696e2f386ed1482e097ab8ef43be5e79275ad128d75" -> "sha256:6fa0cd839fea702cbc0e1b808f5dd7194196ad00c8203ec9113b671d78d18bf8" [label=""];
  "sha256:6fa0cd839fea702cbc0e1b808f5dd7194196ad00c8203ec9113b671d78d18bf8" -> "sha256:242406ef0d65f382cde8acf6710c7a620e8ed0740a5eb2c2191f83adaf983cea" [label=""];
  "sha256:242406ef0d65f382cde8acf6710c7a620e8ed0740a5eb2c2191f83adaf983cea" -> "sha256:08d431644f1bcbeb032d5f86384bc4f2dc050abc0718aa19e807522734adf341" [label=""];
}

