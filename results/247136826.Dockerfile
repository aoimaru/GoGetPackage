[app/sources/247136826.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:feef64bc0fc4af95e396bc2daf89e4fffd4a2cb5db82d30c9b87753a7de6bceb" [label="local://context" shape="ellipse"];
  "sha256:a088590d9924683ad0c01c706bf1517fa5f445bfff14ef57fc19d23d574021fb" [label="copy{src=/eureka-*.jar, dest=/app.jar}" shape="note"];
  "sha256:659b6cf7d400b381df4c8cd5f4c9418a9ce8c2014c3c0e18bf66e6359b38632a" [label="sha256:659b6cf7d400b381df4c8cd5f4c9418a9ce8c2014c3c0e18bf66e6359b38632a" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:a088590d9924683ad0c01c706bf1517fa5f445bfff14ef57fc19d23d574021fb" [label=""];
  "sha256:feef64bc0fc4af95e396bc2daf89e4fffd4a2cb5db82d30c9b87753a7de6bceb" -> "sha256:a088590d9924683ad0c01c706bf1517fa5f445bfff14ef57fc19d23d574021fb" [label=""];
  "sha256:a088590d9924683ad0c01c706bf1517fa5f445bfff14ef57fc19d23d574021fb" -> "sha256:659b6cf7d400b381df4c8cd5f4c9418a9ce8c2014c3c0e18bf66e6359b38632a" [label=""];
}

