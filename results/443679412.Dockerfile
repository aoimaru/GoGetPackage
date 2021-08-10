[app/sources/443679412.Dockerfile]
digraph {
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:01a47583e913a55b8e1dc64407fbe48e75ae7f2bd085792d10ecb574b9997158" [label="/bin/sh -c touch /usr/lib/jvm/java-8-openjdk-amd64/release" shape="box"];
  "sha256:31a6749f2736c7e0bb3d28c8b8114feb5c9bf986ef9aa5fb8880fa50750b2144" [label="/bin/sh -c curl -fsL https://downloads.typesafe.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz     | tar xfz - -C /usr/local --strip-components 1" shape="box"];
  "sha256:24d140d9127f74c4d3d8ad4bec45eb5a83967b07b171b802900e60236237ba9d" [label="/bin/sh -c curl -fsL https://piccolo.link/sbt-${SBT_VERSION}.tgz |     tar xfz - -C /usr/local --strip-components 1" shape="box"];
  "sha256:3327a073134f22c913d0870eac8b3df46212e4e9d2403f735794bede27cd4980" [label="/bin/sh -c git clone --recursive https://github.com/omp4j/omp4j.git /omp4j" shape="box"];
  "sha256:a3180645995391d31b312e3f0a0afb63011b666d6ded40c3e3a4de758463f5b9" [label="mkdir{path=/omp4j}" shape="note"];
  "sha256:1833a983a3a01a730af8d3af35d600a4c26017331cd6ea5f4c0725b156e76607" [label="/bin/sh -c sbt compile &&     sbt test &&     sbt assembly &&     sbt doc" shape="box"];
  "sha256:1736bc91c940085f7da3b629e27c57b87bad54d5f01c5a6a78947f3cae29d930" [label="mkdir{path=/root}" shape="note"];
  "sha256:e5355ccedc73a824a01e9c1ec34d7c4e6c31f771af7cfb9f1c63017a4166a952" [label="/bin/sh -c echo \"java -jar /omp4j/target/scala-2.10/omp4j-assembly-1.3.jar\" > /usr/local/bin/omp4j &&     chmod +x /usr/local/bin/omp4j" shape="box"];
  "sha256:e05bb521305a1bee1b5458a856d292e537fa9dd0f461c61b858c4dab9862b915" [label="sha256:e05bb521305a1bee1b5458a856d292e537fa9dd0f461c61b858c4dab9862b915" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:01a47583e913a55b8e1dc64407fbe48e75ae7f2bd085792d10ecb574b9997158" [label=""];
  "sha256:01a47583e913a55b8e1dc64407fbe48e75ae7f2bd085792d10ecb574b9997158" -> "sha256:31a6749f2736c7e0bb3d28c8b8114feb5c9bf986ef9aa5fb8880fa50750b2144" [label=""];
  "sha256:31a6749f2736c7e0bb3d28c8b8114feb5c9bf986ef9aa5fb8880fa50750b2144" -> "sha256:24d140d9127f74c4d3d8ad4bec45eb5a83967b07b171b802900e60236237ba9d" [label=""];
  "sha256:24d140d9127f74c4d3d8ad4bec45eb5a83967b07b171b802900e60236237ba9d" -> "sha256:3327a073134f22c913d0870eac8b3df46212e4e9d2403f735794bede27cd4980" [label=""];
  "sha256:3327a073134f22c913d0870eac8b3df46212e4e9d2403f735794bede27cd4980" -> "sha256:a3180645995391d31b312e3f0a0afb63011b666d6ded40c3e3a4de758463f5b9" [label=""];
  "sha256:a3180645995391d31b312e3f0a0afb63011b666d6ded40c3e3a4de758463f5b9" -> "sha256:1833a983a3a01a730af8d3af35d600a4c26017331cd6ea5f4c0725b156e76607" [label=""];
  "sha256:1833a983a3a01a730af8d3af35d600a4c26017331cd6ea5f4c0725b156e76607" -> "sha256:1736bc91c940085f7da3b629e27c57b87bad54d5f01c5a6a78947f3cae29d930" [label=""];
  "sha256:1736bc91c940085f7da3b629e27c57b87bad54d5f01c5a6a78947f3cae29d930" -> "sha256:e5355ccedc73a824a01e9c1ec34d7c4e6c31f771af7cfb9f1c63017a4166a952" [label=""];
  "sha256:e5355ccedc73a824a01e9c1ec34d7c4e6c31f771af7cfb9f1c63017a4166a952" -> "sha256:e05bb521305a1bee1b5458a856d292e537fa9dd0f461c61b858c4dab9862b915" [label=""];
}

