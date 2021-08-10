[app/sources/177605837.Dockerfile]
digraph {
  "sha256:3d428ce2df23b1698eea2f524f2d6d4a9078c740a193ea3cdf19b499ad5bc44c" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:88da9e80754c0a94c22ecd58dd2ce9c08aaf494088d2c598cc3b64f362de8c7e" [label="copy{src=/tree-EN.sh, dest=/tree-EN.sh}" shape="note"];
  "sha256:2f2bafc1fa1d4fd813ae5ad43ecbe0947b36088dc8475e3d67a94bf1a0cad6cf" [label="/bin/sh -c apk add --update ncurses bash" shape="box"];
  "sha256:97e60788c1f3f1630dc9fea71008fdf9220f43215a1d34cef063a6dec65d47ee" [label="sha256:97e60788c1f3f1630dc9fea71008fdf9220f43215a1d34cef063a6dec65d47ee" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:88da9e80754c0a94c22ecd58dd2ce9c08aaf494088d2c598cc3b64f362de8c7e" [label=""];
  "sha256:3d428ce2df23b1698eea2f524f2d6d4a9078c740a193ea3cdf19b499ad5bc44c" -> "sha256:88da9e80754c0a94c22ecd58dd2ce9c08aaf494088d2c598cc3b64f362de8c7e" [label=""];
  "sha256:88da9e80754c0a94c22ecd58dd2ce9c08aaf494088d2c598cc3b64f362de8c7e" -> "sha256:2f2bafc1fa1d4fd813ae5ad43ecbe0947b36088dc8475e3d67a94bf1a0cad6cf" [label=""];
  "sha256:2f2bafc1fa1d4fd813ae5ad43ecbe0947b36088dc8475e3d67a94bf1a0cad6cf" -> "sha256:97e60788c1f3f1630dc9fea71008fdf9220f43215a1d34cef063a6dec65d47ee" [label=""];
}

