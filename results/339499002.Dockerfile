[app/sources/339499002.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:53cc97210080aa8d333820595faf56b5387d34f8a7e9aedf7fcab51f16ee01e1" [label="local://context" shape="ellipse"];
  "sha256:979a946f3094a8bf36502d1e2fe4612c0cd3821d8ed4b1c49acbabd59384bd74" [label="copy{src=/target/eureka-server-1.0.0-SNAPSHOT.jar, dest=/usr/src/eureka/}" shape="note"];
  "sha256:7e4d36db301fa46aa87c500b6ab657282d8a657109f861b3ccffd20415940a66" [label="mkdir{path=/usr/src/eureka}" shape="note"];
  "sha256:dd8f6dc6a42c341d3214ce894169525c6977f3bd4f0b2621045ee418a19d8ed0" [label="sha256:dd8f6dc6a42c341d3214ce894169525c6977f3bd4f0b2621045ee418a19d8ed0" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:979a946f3094a8bf36502d1e2fe4612c0cd3821d8ed4b1c49acbabd59384bd74" [label=""];
  "sha256:53cc97210080aa8d333820595faf56b5387d34f8a7e9aedf7fcab51f16ee01e1" -> "sha256:979a946f3094a8bf36502d1e2fe4612c0cd3821d8ed4b1c49acbabd59384bd74" [label=""];
  "sha256:979a946f3094a8bf36502d1e2fe4612c0cd3821d8ed4b1c49acbabd59384bd74" -> "sha256:7e4d36db301fa46aa87c500b6ab657282d8a657109f861b3ccffd20415940a66" [label=""];
  "sha256:7e4d36db301fa46aa87c500b6ab657282d8a657109f861b3ccffd20415940a66" -> "sha256:dd8f6dc6a42c341d3214ce894169525c6977f3bd4f0b2621045ee418a19d8ed0" [label=""];
}

