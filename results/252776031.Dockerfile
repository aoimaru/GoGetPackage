[app/sources/252776031.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:83ccb30ee80d38054b0b448cc972d371006216cb262fc7e618c2279a76d11f02" [label="/bin/sh -c mkdir -p /app/build" shape="box"];
  "sha256:0aeae31bae6354ea5667793d2fc0fe40d0e86ed80e72a088492d91372f5453b7" [label="/bin/sh -c mkdir -p /app/run" shape="box"];
  "sha256:50ba07e5a0f7bf5a08e2301dae1e483112997e9529c33e61f195556f5c16bbcf" [label="mkdir{path=/app/build}" shape="note"];
  "sha256:112305a2be21131d2b2093316a1be6f46f60caef6c4b9e55b8f6f40d59ccdbc6" [label="/bin/sh -c apk add --no-cache maven" shape="box"];
  "sha256:2a2f6f0e15ca3399e10fa68b4dccf4df8715158f8fc4e7607555bc6e1b5bdd83" [label="local://context" shape="ellipse"];
  "sha256:f87350a7d10065b01be362d2917002e810975d9d31e5fd866a33f342c8bdc2cf" [label="copy{src=/, dest=/app/build/}" shape="note"];
  "sha256:f357402e9705b084c81d5a0a6085dc5354610697ce9b5a7ec2e8b4aa511b5ede" [label="/bin/sh -c mvn clean package" shape="box"];
  "sha256:11455dbb95586b99bd1a340a9fb92edd437c9981b0d7e9215ac520c11955d99d" [label="/bin/sh -c cp target/ISStatusBot.jar /app/run/" shape="box"];
  "sha256:f9b81fbb473a099723b39cc87a63915a77c6354049d3218a5bc029e238d41984" [label="mkdir{path=/app/run}" shape="note"];
  "sha256:3a51adf08f4f87abb74e959f816102b3210ca335371ab1527a5246194f89d6d9" [label="sha256:3a51adf08f4f87abb74e959f816102b3210ca335371ab1527a5246194f89d6d9" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:83ccb30ee80d38054b0b448cc972d371006216cb262fc7e618c2279a76d11f02" [label=""];
  "sha256:83ccb30ee80d38054b0b448cc972d371006216cb262fc7e618c2279a76d11f02" -> "sha256:0aeae31bae6354ea5667793d2fc0fe40d0e86ed80e72a088492d91372f5453b7" [label=""];
  "sha256:0aeae31bae6354ea5667793d2fc0fe40d0e86ed80e72a088492d91372f5453b7" -> "sha256:50ba07e5a0f7bf5a08e2301dae1e483112997e9529c33e61f195556f5c16bbcf" [label=""];
  "sha256:50ba07e5a0f7bf5a08e2301dae1e483112997e9529c33e61f195556f5c16bbcf" -> "sha256:112305a2be21131d2b2093316a1be6f46f60caef6c4b9e55b8f6f40d59ccdbc6" [label=""];
  "sha256:112305a2be21131d2b2093316a1be6f46f60caef6c4b9e55b8f6f40d59ccdbc6" -> "sha256:f87350a7d10065b01be362d2917002e810975d9d31e5fd866a33f342c8bdc2cf" [label=""];
  "sha256:2a2f6f0e15ca3399e10fa68b4dccf4df8715158f8fc4e7607555bc6e1b5bdd83" -> "sha256:f87350a7d10065b01be362d2917002e810975d9d31e5fd866a33f342c8bdc2cf" [label=""];
  "sha256:f87350a7d10065b01be362d2917002e810975d9d31e5fd866a33f342c8bdc2cf" -> "sha256:f357402e9705b084c81d5a0a6085dc5354610697ce9b5a7ec2e8b4aa511b5ede" [label=""];
  "sha256:f357402e9705b084c81d5a0a6085dc5354610697ce9b5a7ec2e8b4aa511b5ede" -> "sha256:11455dbb95586b99bd1a340a9fb92edd437c9981b0d7e9215ac520c11955d99d" [label=""];
  "sha256:11455dbb95586b99bd1a340a9fb92edd437c9981b0d7e9215ac520c11955d99d" -> "sha256:f9b81fbb473a099723b39cc87a63915a77c6354049d3218a5bc029e238d41984" [label=""];
  "sha256:f9b81fbb473a099723b39cc87a63915a77c6354049d3218a5bc029e238d41984" -> "sha256:3a51adf08f4f87abb74e959f816102b3210ca335371ab1527a5246194f89d6d9" [label=""];
}

