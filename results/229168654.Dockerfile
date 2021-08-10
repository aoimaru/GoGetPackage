[app/sources/229168654.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:d44976ed19c5e9c1fe8de260ec35e63d6a9e2f5b6a756093e3b1bc5a80924353" [label="/bin/sh -c apk -U --no-progress upgrade  && apk -U --force --no-progress add     dnsmasq  && rm /var/cache/apk/*" shape="box"];
  "sha256:b7dd753adfa21bbc10827e95428d777b600132348db1d0a67b75d0f3e52da597" [label="sha256:b7dd753adfa21bbc10827e95428d777b600132348db1d0a67b75d0f3e52da597" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:d44976ed19c5e9c1fe8de260ec35e63d6a9e2f5b6a756093e3b1bc5a80924353" [label=""];
  "sha256:d44976ed19c5e9c1fe8de260ec35e63d6a9e2f5b6a756093e3b1bc5a80924353" -> "sha256:b7dd753adfa21bbc10827e95428d777b600132348db1d0a67b75d0f3e52da597" [label=""];
}

