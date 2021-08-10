[app/sources/209316480.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:711d01c97722e5dd0d04963c0b96d4b0a97db3620b6717f49e0cc6a2a1e7d0a5" [label="/bin/sh -c apk add --update git && go get github.com/fffaraz/microdns" shape="box"];
  "sha256:fb416148ba97ebb30cbd8f347eaddcd02dcad782af15ca3f361e17addc50102a" [label="copy{src=/go/bin/microdns, dest=/usr/local/bin}" shape="note"];
  "sha256:901345d7c2f2118506b1645167b331f2a888e83b28495ce527c5f1800fae1b79" [label="sha256:901345d7c2f2118506b1645167b331f2a888e83b28495ce527c5f1800fae1b79" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:711d01c97722e5dd0d04963c0b96d4b0a97db3620b6717f49e0cc6a2a1e7d0a5" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:fb416148ba97ebb30cbd8f347eaddcd02dcad782af15ca3f361e17addc50102a" [label=""];
  "sha256:711d01c97722e5dd0d04963c0b96d4b0a97db3620b6717f49e0cc6a2a1e7d0a5" -> "sha256:fb416148ba97ebb30cbd8f347eaddcd02dcad782af15ca3f361e17addc50102a" [label=""];
  "sha256:fb416148ba97ebb30cbd8f347eaddcd02dcad782af15ca3f361e17addc50102a" -> "sha256:901345d7c2f2118506b1645167b331f2a888e83b28495ce527c5f1800fae1b79" [label=""];
}

