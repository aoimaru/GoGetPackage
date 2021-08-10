[app/sources/406018703.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:1da2b0d8c6003d1004d071b19fad03e7b4ad4436e4c5d28c9519ec72397ef2df" [label="local://context" shape="ellipse"];
  "sha256:ff681eec0959e3472b43c9453583e7212ca6fa76d8eee1144d91bb5fad8c1c82" [label="copy{src=/auth-srv, dest=/auth-srv}" shape="note"];
  "sha256:92c6e9cff546faba4dee1c8a49753ec8da9d57464c5271fbe04f1af1aaf245e9" [label="sha256:92c6e9cff546faba4dee1c8a49753ec8da9d57464c5271fbe04f1af1aaf245e9" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:ff681eec0959e3472b43c9453583e7212ca6fa76d8eee1144d91bb5fad8c1c82" [label=""];
  "sha256:1da2b0d8c6003d1004d071b19fad03e7b4ad4436e4c5d28c9519ec72397ef2df" -> "sha256:ff681eec0959e3472b43c9453583e7212ca6fa76d8eee1144d91bb5fad8c1c82" [label=""];
  "sha256:ff681eec0959e3472b43c9453583e7212ca6fa76d8eee1144d91bb5fad8c1c82" -> "sha256:92c6e9cff546faba4dee1c8a49753ec8da9d57464c5271fbe04f1af1aaf245e9" [label=""];
}

