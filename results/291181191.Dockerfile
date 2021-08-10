[app/sources/291181191.Dockerfile]
digraph {
  "sha256:f34a437301dde891ef775d2b462e1d39348abb3d4944558ff41ab86af232218c" [label="docker-image://docker.io/circleci/mongo:4.0.3-xenial@sha256:d80169c533fe4d6d46342de915da5bd8babd2c771fc8fed3f7f4eede5defa005" shape="ellipse"];
  "sha256:4e0a870de2856cd6ff19bdcf533ca5c7af70834b41c2df16b0b4085a0540b3ed" [label="/bin/sh -c sed -i '/exec \"$@\"/i mkdir \\/dev\\/shm\\/mongo' /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:ee001dd1436f52998830a6dda88ea0b7d38f14e4d2cb6da5f5a3180490457a15" [label="sha256:ee001dd1436f52998830a6dda88ea0b7d38f14e4d2cb6da5f5a3180490457a15" shape="plaintext"];
  "sha256:f34a437301dde891ef775d2b462e1d39348abb3d4944558ff41ab86af232218c" -> "sha256:4e0a870de2856cd6ff19bdcf533ca5c7af70834b41c2df16b0b4085a0540b3ed" [label=""];
  "sha256:4e0a870de2856cd6ff19bdcf533ca5c7af70834b41c2df16b0b4085a0540b3ed" -> "sha256:ee001dd1436f52998830a6dda88ea0b7d38f14e4d2cb6da5f5a3180490457a15" [label=""];
}

