[app/sources/406018617.Dockerfile]
digraph {
  "sha256:4e82e7d79cadf2493dea6e843f081030da8fa09369ff6b3216bfd64a937dff55" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:fe328cbc4888b286dbf7661bcdb97d752f2046c62b3a3b1ebbba89251aa6e0c7" [label="copy{src=/user-srv, dest=/user-srv}" shape="note"];
  "sha256:129de71207868ec4d36f050890305222c1b92eb49839eb69a86a7e63088ec01c" [label="sha256:129de71207868ec4d36f050890305222c1b92eb49839eb69a86a7e63088ec01c" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:fe328cbc4888b286dbf7661bcdb97d752f2046c62b3a3b1ebbba89251aa6e0c7" [label=""];
  "sha256:4e82e7d79cadf2493dea6e843f081030da8fa09369ff6b3216bfd64a937dff55" -> "sha256:fe328cbc4888b286dbf7661bcdb97d752f2046c62b3a3b1ebbba89251aa6e0c7" [label=""];
  "sha256:fe328cbc4888b286dbf7661bcdb97d752f2046c62b3a3b1ebbba89251aa6e0c7" -> "sha256:129de71207868ec4d36f050890305222c1b92eb49839eb69a86a7e63088ec01c" [label=""];
}

