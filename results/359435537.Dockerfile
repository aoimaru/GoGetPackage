[app/sources/359435537.Dockerfile]
digraph {
  "sha256:3fd9b01f3e04fc421e500170373e56042ad177339f7afe0175e7ec22125280b0" [label="local://context" shape="ellipse"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:d4a14ebb3ce207a09e4020d0ee762cabc95a0cd8161beb0883e988fe1dbc5132" [label="copy{src=/, dest=/project}" shape="note"];
  "sha256:3cfe42222cfa47998f806e794afe5cada1932d40b2393b7e8f9ff8838738071c" [label="mkdir{path=/project}" shape="note"];
  "sha256:fb57a02a87f03ce7f60d199b535eb840561426acb8ffaef909005eafe3d73326" [label="/bin/sh -c ./gradlew build" shape="box"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:05c0b85b02a6f5638c49ae7212d08fdd12bda705915e026de7f2f222ef5d483f" [label="copy{src=/project/build/libs/*.jar, dest=/vnfm-generic.jar}" shape="note"];
  "sha256:92f61fbe078217edd1655649174316e0a4fbce4f158bf13954e34724b1a71f8d" [label="/bin/sh -c mkdir -p /var/log/openbaton" shape="box"];
  "sha256:fba57dfa57613047fa3065bc09bfeabb4753f2cbe364ebdebfb6eb98a74480ae" [label="sha256:fba57dfa57613047fa3065bc09bfeabb4753f2cbe364ebdebfb6eb98a74480ae" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:d4a14ebb3ce207a09e4020d0ee762cabc95a0cd8161beb0883e988fe1dbc5132" [label=""];
  "sha256:3fd9b01f3e04fc421e500170373e56042ad177339f7afe0175e7ec22125280b0" -> "sha256:d4a14ebb3ce207a09e4020d0ee762cabc95a0cd8161beb0883e988fe1dbc5132" [label=""];
  "sha256:d4a14ebb3ce207a09e4020d0ee762cabc95a0cd8161beb0883e988fe1dbc5132" -> "sha256:3cfe42222cfa47998f806e794afe5cada1932d40b2393b7e8f9ff8838738071c" [label=""];
  "sha256:3cfe42222cfa47998f806e794afe5cada1932d40b2393b7e8f9ff8838738071c" -> "sha256:fb57a02a87f03ce7f60d199b535eb840561426acb8ffaef909005eafe3d73326" [label=""];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:05c0b85b02a6f5638c49ae7212d08fdd12bda705915e026de7f2f222ef5d483f" [label=""];
  "sha256:fb57a02a87f03ce7f60d199b535eb840561426acb8ffaef909005eafe3d73326" -> "sha256:05c0b85b02a6f5638c49ae7212d08fdd12bda705915e026de7f2f222ef5d483f" [label=""];
  "sha256:05c0b85b02a6f5638c49ae7212d08fdd12bda705915e026de7f2f222ef5d483f" -> "sha256:92f61fbe078217edd1655649174316e0a4fbce4f158bf13954e34724b1a71f8d" [label=""];
  "sha256:92f61fbe078217edd1655649174316e0a4fbce4f158bf13954e34724b1a71f8d" -> "sha256:fba57dfa57613047fa3065bc09bfeabb4753f2cbe364ebdebfb6eb98a74480ae" [label=""];
}

