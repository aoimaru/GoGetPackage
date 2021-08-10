[app/sources/291181051.Dockerfile]
digraph {
  "sha256:89eb51a1fe8cc26db7b5525bc931201681a43a1c1a02bc85d93c06e9df12a15f" [label="docker-image://docker.io/circleci/mongo:3.4.17@sha256:f9cea2d90e23213842bce3f6afbade6f6832e9489e89b5f0cdcd0e7b6e6e6340" shape="ellipse"];
  "sha256:fbe67b7a6f9a14fc4600fead9742740a330e71dc6663ccca88798ee4771bbd23" [label="/bin/sh -c sed -i '/exec \"$@\"/i mkdir \\/dev\\/shm\\/mongo' /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:f9b207f05af6686cdfd9c34ad9f3de8e45ea47eb773b273fbfaecccd39aa76be" [label="sha256:f9b207f05af6686cdfd9c34ad9f3de8e45ea47eb773b273fbfaecccd39aa76be" shape="plaintext"];
  "sha256:89eb51a1fe8cc26db7b5525bc931201681a43a1c1a02bc85d93c06e9df12a15f" -> "sha256:fbe67b7a6f9a14fc4600fead9742740a330e71dc6663ccca88798ee4771bbd23" [label=""];
  "sha256:fbe67b7a6f9a14fc4600fead9742740a330e71dc6663ccca88798ee4771bbd23" -> "sha256:f9b207f05af6686cdfd9c34ad9f3de8e45ea47eb773b273fbfaecccd39aa76be" [label=""];
}

