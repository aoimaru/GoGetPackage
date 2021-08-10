[app/sources/252769624.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:ec7990085b79b07a2b7ccffee2ae9e13ad13eb61a5588dc38d96d6d261634f41" [label="/bin/sh -c apk update && apk add py-pip && pip install shadowsocks" shape="box"];
  "sha256:d7e2c83bc2cb8390c7118b048ee26700c8266a1a3321d8e9f54a8bb6cf32b18c" [label="sha256:d7e2c83bc2cb8390c7118b048ee26700c8266a1a3321d8e9f54a8bb6cf32b18c" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:ec7990085b79b07a2b7ccffee2ae9e13ad13eb61a5588dc38d96d6d261634f41" [label=""];
  "sha256:ec7990085b79b07a2b7ccffee2ae9e13ad13eb61a5588dc38d96d6d261634f41" -> "sha256:d7e2c83bc2cb8390c7118b048ee26700c8266a1a3321d8e9f54a8bb6cf32b18c" [label=""];
}

