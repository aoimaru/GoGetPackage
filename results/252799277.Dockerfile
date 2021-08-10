[app/sources/252799277.Dockerfile]
digraph {
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" [label="docker-image://docker.io/gliderlabs/alpine:latest" shape="ellipse"];
  "sha256:6518f311a242b3c8a90a34915c727e15413cf848972d8c581a447ccc5c1b1295" [label="/bin/sh -c apk add --update python3 && rm /var/cache/apk/*" shape="box"];
  "sha256:04553152da532d8076e3c1b4e2e8f6f9928c405b5c84301354e8dc7942c850c8" [label="/bin/sh -c pip3 install awscli" shape="box"];
  "sha256:e541d7eb6fa38eb35bc6840c857084753c348d533797bee9699730cb941125eb" [label="/bin/sh -c aws configure set preview.cloudfront true" shape="box"];
  "sha256:6a98d0a149b866c422af202ca1666d6b304d4eefe3a4833af36cd703332c3525" [label="sha256:6a98d0a149b866c422af202ca1666d6b304d4eefe3a4833af36cd703332c3525" shape="plaintext"];
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" -> "sha256:6518f311a242b3c8a90a34915c727e15413cf848972d8c581a447ccc5c1b1295" [label=""];
  "sha256:6518f311a242b3c8a90a34915c727e15413cf848972d8c581a447ccc5c1b1295" -> "sha256:04553152da532d8076e3c1b4e2e8f6f9928c405b5c84301354e8dc7942c850c8" [label=""];
  "sha256:04553152da532d8076e3c1b4e2e8f6f9928c405b5c84301354e8dc7942c850c8" -> "sha256:e541d7eb6fa38eb35bc6840c857084753c348d533797bee9699730cb941125eb" [label=""];
  "sha256:e541d7eb6fa38eb35bc6840c857084753c348d533797bee9699730cb941125eb" -> "sha256:6a98d0a149b866c422af202ca1666d6b304d4eefe3a4833af36cd703332c3525" [label=""];
}

