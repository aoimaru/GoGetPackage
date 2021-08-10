[app/sources/252770123.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:9530f875cf344c01a92e2403fbb5596007b9a09741e2efc2fa537864d64f5e05" [label="local://context" shape="ellipse"];
  "sha256:a2659f1d548a9f58205ff0db723b50be74b1284e510502596b0f556a71d8e2d7" [label="copy{src=/, dest=/mnt}" shape="note"];
  "sha256:df283ce4efaa1d9d95df929464832a2a4bc30ceb32d0759c1e9cb958529441ee" [label="/bin/sh -c set -x && apk add --no-cache git && cd /mnt && go get -d -v && go build listcompute.go && mv ./listcompute /bin/listcompute && apk del git" shape="box"];
  "sha256:5e35b86c42acd2d6ef645a1fc34980f583c36291a5f09d1694596d99938bddb9" [label="sha256:5e35b86c42acd2d6ef645a1fc34980f583c36291a5f09d1694596d99938bddb9" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:a2659f1d548a9f58205ff0db723b50be74b1284e510502596b0f556a71d8e2d7" [label=""];
  "sha256:9530f875cf344c01a92e2403fbb5596007b9a09741e2efc2fa537864d64f5e05" -> "sha256:a2659f1d548a9f58205ff0db723b50be74b1284e510502596b0f556a71d8e2d7" [label=""];
  "sha256:a2659f1d548a9f58205ff0db723b50be74b1284e510502596b0f556a71d8e2d7" -> "sha256:df283ce4efaa1d9d95df929464832a2a4bc30ceb32d0759c1e9cb958529441ee" [label=""];
  "sha256:df283ce4efaa1d9d95df929464832a2a4bc30ceb32d0759c1e9cb958529441ee" -> "sha256:5e35b86c42acd2d6ef645a1fc34980f583c36291a5f09d1694596d99938bddb9" [label=""];
}

