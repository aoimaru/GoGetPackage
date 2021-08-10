[app/sources/291179041.Dockerfile]
digraph {
  "sha256:ed7fc9e829e53127cf015a621fb2fb139627b6bce85e1cdc481b9aa7e5c09f1a" [label="docker-image://docker.io/library/openjdk:11-jdk-sid" shape="ellipse"];
  "sha256:c62d51c5aab1ec0b0d29ba7ae5f93b24f14e0da0fedaeade74ea7d1e4d18df03" [label="/bin/sh -c mkdir -p opt/dynamodb" shape="box"];
  "sha256:10e347e2f9170372935c89c68634c842a39749f612e51d021f3c625d4a447ca1" [label="mkdir{path=/opt/dynamodb}" shape="note"];
  "sha256:288aec3ac5e9fdbd0810262920e61e9c3161e8b8500b6a79da20debb1cff523f" [label="/bin/sh -c wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz -q -O - | tar -xz" shape="box"];
  "sha256:a507e38bd3242c4cce0da98395e7de2273c64b6021cd758275a10413803adb2c" [label="sha256:a507e38bd3242c4cce0da98395e7de2273c64b6021cd758275a10413803adb2c" shape="plaintext"];
  "sha256:ed7fc9e829e53127cf015a621fb2fb139627b6bce85e1cdc481b9aa7e5c09f1a" -> "sha256:c62d51c5aab1ec0b0d29ba7ae5f93b24f14e0da0fedaeade74ea7d1e4d18df03" [label=""];
  "sha256:c62d51c5aab1ec0b0d29ba7ae5f93b24f14e0da0fedaeade74ea7d1e4d18df03" -> "sha256:10e347e2f9170372935c89c68634c842a39749f612e51d021f3c625d4a447ca1" [label=""];
  "sha256:10e347e2f9170372935c89c68634c842a39749f612e51d021f3c625d4a447ca1" -> "sha256:288aec3ac5e9fdbd0810262920e61e9c3161e8b8500b6a79da20debb1cff523f" [label=""];
  "sha256:288aec3ac5e9fdbd0810262920e61e9c3161e8b8500b6a79da20debb1cff523f" -> "sha256:a507e38bd3242c4cce0da98395e7de2273c64b6021cd758275a10413803adb2c" [label=""];
}

