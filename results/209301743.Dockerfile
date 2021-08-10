[app/sources/209301743.Dockerfile]
digraph {
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" [label="docker-image://docker.io/library/java:8-jdk" shape="ellipse"];
  "sha256:0ec9f91b5cb234d80bd0d676b409105c092002cd88ea97c79f79722a30aa1846" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:95480dcfcd8d8c1d2bf1c27af47e3b2e76eeaea58e1106d710bd1f0ef4f0b3e1" [label="mkdir{path=/app}" shape="note"];
  "sha256:240468bd81506b1f930b29fe32b5b11c5c9466fe3e591d81576a1d7181156f5e" [label="local://context" shape="ellipse"];
  "sha256:2efdfe73e7d607d84540afd3b5d2c9b84ae573a7b245e69ffe47197cd95e8a95" [label="copy{src=/build/libs/service-b.jar, dest=/app}" shape="note"];
  "sha256:e10e26c687a556493ffdf3c9411e13761d5915800ee9e5a28d6c6d9436fb473e" [label="sha256:e10e26c687a556493ffdf3c9411e13761d5915800ee9e5a28d6c6d9436fb473e" shape="plaintext"];
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" -> "sha256:0ec9f91b5cb234d80bd0d676b409105c092002cd88ea97c79f79722a30aa1846" [label=""];
  "sha256:0ec9f91b5cb234d80bd0d676b409105c092002cd88ea97c79f79722a30aa1846" -> "sha256:95480dcfcd8d8c1d2bf1c27af47e3b2e76eeaea58e1106d710bd1f0ef4f0b3e1" [label=""];
  "sha256:95480dcfcd8d8c1d2bf1c27af47e3b2e76eeaea58e1106d710bd1f0ef4f0b3e1" -> "sha256:2efdfe73e7d607d84540afd3b5d2c9b84ae573a7b245e69ffe47197cd95e8a95" [label=""];
  "sha256:240468bd81506b1f930b29fe32b5b11c5c9466fe3e591d81576a1d7181156f5e" -> "sha256:2efdfe73e7d607d84540afd3b5d2c9b84ae573a7b245e69ffe47197cd95e8a95" [label=""];
  "sha256:2efdfe73e7d607d84540afd3b5d2c9b84ae573a7b245e69ffe47197cd95e8a95" -> "sha256:e10e26c687a556493ffdf3c9411e13761d5915800ee9e5a28d6c6d9436fb473e" [label=""];
}

