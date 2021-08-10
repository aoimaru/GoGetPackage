[app/sources/223727806.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:71a944705e5f8441a70895c2757815f4069ce74a7b8d728f002e84f6cd1f744e" [label="/bin/sh -c apk update && apk add ca-certificates && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:59f07897e27b09c3201769447d29c1f14829052d558e30a062684b0fa6eb1569" [label="sha256:59f07897e27b09c3201769447d29c1f14829052d558e30a062684b0fa6eb1569" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:71a944705e5f8441a70895c2757815f4069ce74a7b8d728f002e84f6cd1f744e" [label=""];
  "sha256:71a944705e5f8441a70895c2757815f4069ce74a7b8d728f002e84f6cd1f744e" -> "sha256:59f07897e27b09c3201769447d29c1f14829052d558e30a062684b0fa6eb1569" [label=""];
}

