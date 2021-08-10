[app/sources/470544985.Dockerfile]
digraph {
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" [label="docker-image://docker.io/library/redis:latest" shape="ellipse"];
  "sha256:fe25f62d82990e3c968cfb5bcb483f32e6d939599c1ad2ae4d9fe3c156006c15" [label="local://context" shape="ellipse"];
  "sha256:9b60bf8ac7d36dfe5558cddcd485c4c20ec1a4584991c3f0c07eb2514ee3c5ae" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:654d823f9e46077610142512482575c729561db594a58960d07ec4dab20c0c68" [label="sha256:654d823f9e46077610142512482575c729561db594a58960d07ec4dab20c0c68" shape="plaintext"];
  "sha256:b145f0ad9ae9a60f6de4b81d9ba792548eefa51430e720eb67d23392494d4db4" -> "sha256:9b60bf8ac7d36dfe5558cddcd485c4c20ec1a4584991c3f0c07eb2514ee3c5ae" [label=""];
  "sha256:fe25f62d82990e3c968cfb5bcb483f32e6d939599c1ad2ae4d9fe3c156006c15" -> "sha256:9b60bf8ac7d36dfe5558cddcd485c4c20ec1a4584991c3f0c07eb2514ee3c5ae" [label=""];
  "sha256:9b60bf8ac7d36dfe5558cddcd485c4c20ec1a4584991c3f0c07eb2514ee3c5ae" -> "sha256:654d823f9e46077610142512482575c729561db594a58960d07ec4dab20c0c68" [label=""];
}

