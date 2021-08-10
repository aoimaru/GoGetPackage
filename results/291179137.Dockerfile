[app/sources/291179137.Dockerfile]
digraph {
  "sha256:2cfb4cca6e0222dad0f866d1ad3ae2723ce2d9829fcf113272175a1c49c764ae" [label="docker-image://docker.io/library/openjdk:8u181-jre-stretch" shape="ellipse"];
  "sha256:3a67a12595a66bf28e96a323f42481927731e1a84861474d42d551fa5766f455" [label="/bin/sh -c mkdir -p opt/dynamodb" shape="box"];
  "sha256:03b95fa1b8ad211803d8b12c90a73f3a741a1a3ee410c6d58c622d44d80f2314" [label="mkdir{path=/opt/dynamodb}" shape="note"];
  "sha256:865af1bfc07908d73aae2408fd20094e231df6f6556ef66adf47a601ba2efa25" [label="/bin/sh -c wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz -q -O - | tar -xz || curl -L http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz | tar xz" shape="box"];
  "sha256:9e2797c60683b30a72fbab843326e043cb03e371ccbcd2c20ac164a9091a0e24" [label="sha256:9e2797c60683b30a72fbab843326e043cb03e371ccbcd2c20ac164a9091a0e24" shape="plaintext"];
  "sha256:2cfb4cca6e0222dad0f866d1ad3ae2723ce2d9829fcf113272175a1c49c764ae" -> "sha256:3a67a12595a66bf28e96a323f42481927731e1a84861474d42d551fa5766f455" [label=""];
  "sha256:3a67a12595a66bf28e96a323f42481927731e1a84861474d42d551fa5766f455" -> "sha256:03b95fa1b8ad211803d8b12c90a73f3a741a1a3ee410c6d58c622d44d80f2314" [label=""];
  "sha256:03b95fa1b8ad211803d8b12c90a73f3a741a1a3ee410c6d58c622d44d80f2314" -> "sha256:865af1bfc07908d73aae2408fd20094e231df6f6556ef66adf47a601ba2efa25" [label=""];
  "sha256:865af1bfc07908d73aae2408fd20094e231df6f6556ef66adf47a601ba2efa25" -> "sha256:9e2797c60683b30a72fbab843326e043cb03e371ccbcd2c20ac164a9091a0e24" [label=""];
}

