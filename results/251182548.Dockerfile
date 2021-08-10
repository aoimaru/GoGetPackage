[app/sources/251182548.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:8d00cfed352b500f5551c7afb4826b225ff98a5c94ec72278ea229d58860c769" [label="/bin/sh -c apt-get -y update && apt-get install -y curl" shape="box"];
  "sha256:1f5d0ed259fec269d90faf69ffba1174618fc7a0ae27417a813cbcda0e643907" [label="sha256:1f5d0ed259fec269d90faf69ffba1174618fc7a0ae27417a813cbcda0e643907" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:8d00cfed352b500f5551c7afb4826b225ff98a5c94ec72278ea229d58860c769" [label=""];
  "sha256:8d00cfed352b500f5551c7afb4826b225ff98a5c94ec72278ea229d58860c769" -> "sha256:1f5d0ed259fec269d90faf69ffba1174618fc7a0ae27417a813cbcda0e643907" [label=""];
}

