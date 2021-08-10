[app/sources/197457643.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:bd80ef3d44a1042b74ce6f870b82e5193e38efd7d6b6bd98fe3ca927c3fcd663" [label="/bin/sh -c something" shape="box"];
  "sha256:2ed7175b35dac4d85a93c2636f91daeff1ab5b98200ab7ae8680a87cf311105b" [label="sha256:2ed7175b35dac4d85a93c2636f91daeff1ab5b98200ab7ae8680a87cf311105b" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:bd80ef3d44a1042b74ce6f870b82e5193e38efd7d6b6bd98fe3ca927c3fcd663" [label=""];
  "sha256:bd80ef3d44a1042b74ce6f870b82e5193e38efd7d6b6bd98fe3ca927c3fcd663" -> "sha256:2ed7175b35dac4d85a93c2636f91daeff1ab5b98200ab7ae8680a87cf311105b" [label=""];
}

