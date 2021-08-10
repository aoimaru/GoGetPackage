[app/sources/252774417.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:ae108617549cdfa0cba2829d7bc73e27bdb060b76fbd72cdf99a34289c719664" [label="/bin/sh -c apk add \\--no-cache git && go get github.com/aws/aws-sdk-go/aws && go get github.com/aws/aws-sdk-go/aws/awserr && go get github.com/aws/aws-sdk-go/aws/session && go get github.com/aws/aws-sdk-go/service/ec2 && go get github.com/julienschmidt/httprouter && go get github.com/spf13/cobra && apk del git" shape="box"];
  "sha256:49f327f81024d2d0656ffff2ac14d03e71bd3c28eaeadfdc42bd84aea89fa8ab" [label="local://context" shape="ellipse"];
  "sha256:960d8ee46e360b0b39808cc667d04436bea0478247ca83cf8dcc0ddd9fe2346f" [label="copy{src=/, dest=/src/github.com/amongil/blackice}" shape="note"];
  "sha256:024e6797a9c96576a13073a228a5e53c315b2a60f5bc90046612eef639698257" [label="/bin/sh -c go install github.com/amongil/blackice/blackice" shape="box"];
  "sha256:3bf31629c756fd590fae69716ed8f3d967498ec37f614a00d93ca0ebb91d95e3" [label="sha256:3bf31629c756fd590fae69716ed8f3d967498ec37f614a00d93ca0ebb91d95e3" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:ae108617549cdfa0cba2829d7bc73e27bdb060b76fbd72cdf99a34289c719664" [label=""];
  "sha256:ae108617549cdfa0cba2829d7bc73e27bdb060b76fbd72cdf99a34289c719664" -> "sha256:960d8ee46e360b0b39808cc667d04436bea0478247ca83cf8dcc0ddd9fe2346f" [label=""];
  "sha256:49f327f81024d2d0656ffff2ac14d03e71bd3c28eaeadfdc42bd84aea89fa8ab" -> "sha256:960d8ee46e360b0b39808cc667d04436bea0478247ca83cf8dcc0ddd9fe2346f" [label=""];
  "sha256:960d8ee46e360b0b39808cc667d04436bea0478247ca83cf8dcc0ddd9fe2346f" -> "sha256:024e6797a9c96576a13073a228a5e53c315b2a60f5bc90046612eef639698257" [label=""];
  "sha256:024e6797a9c96576a13073a228a5e53c315b2a60f5bc90046612eef639698257" -> "sha256:3bf31629c756fd590fae69716ed8f3d967498ec37f614a00d93ca0ebb91d95e3" [label=""];
}

