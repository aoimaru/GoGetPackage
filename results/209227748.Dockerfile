[app/sources/209227748.Dockerfile]
digraph {
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" [label="docker-image://docker.io/library/java:8-jdk" shape="ellipse"];
  "sha256:bff25a60bfb4181d684ea31e6e8a23a3eaea95f0b2c5d672904f561b48f2a9f9" [label="/bin/sh -c wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz" shape="box"];
  "sha256:ba1bdc93992ed6e999d10599f484454aef54cfd962b854a3d28c90b1720ac083" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:c1ed4bae5209d5c938c7b1dbf3ba41948f969cf73ad424e43401ce756e69a77b" [label="mkdir{path=/app}" shape="note"];
  "sha256:7cf8a744ab73f8d43b4106f0d17325ba9e8215c79df6dec7d70f979a99c9797a" [label="local://context" shape="ellipse"];
  "sha256:0c2287db69cedce2f1fa72fd3152d66811e329d9fbbb0f1739f05156fd435f17" [label="copy{src=/build/libs/config-server.jar, dest=/app}" shape="note"];
  "sha256:f7e40d9da31de5ba296e77a65b9077da2c85734816bbd188e8098d1e0e89c271" [label="sha256:f7e40d9da31de5ba296e77a65b9077da2c85734816bbd188e8098d1e0e89c271" shape="plaintext"];
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" -> "sha256:bff25a60bfb4181d684ea31e6e8a23a3eaea95f0b2c5d672904f561b48f2a9f9" [label=""];
  "sha256:bff25a60bfb4181d684ea31e6e8a23a3eaea95f0b2c5d672904f561b48f2a9f9" -> "sha256:ba1bdc93992ed6e999d10599f484454aef54cfd962b854a3d28c90b1720ac083" [label=""];
  "sha256:ba1bdc93992ed6e999d10599f484454aef54cfd962b854a3d28c90b1720ac083" -> "sha256:c1ed4bae5209d5c938c7b1dbf3ba41948f969cf73ad424e43401ce756e69a77b" [label=""];
  "sha256:c1ed4bae5209d5c938c7b1dbf3ba41948f969cf73ad424e43401ce756e69a77b" -> "sha256:0c2287db69cedce2f1fa72fd3152d66811e329d9fbbb0f1739f05156fd435f17" [label=""];
  "sha256:7cf8a744ab73f8d43b4106f0d17325ba9e8215c79df6dec7d70f979a99c9797a" -> "sha256:0c2287db69cedce2f1fa72fd3152d66811e329d9fbbb0f1739f05156fd435f17" [label=""];
  "sha256:0c2287db69cedce2f1fa72fd3152d66811e329d9fbbb0f1739f05156fd435f17" -> "sha256:f7e40d9da31de5ba296e77a65b9077da2c85734816bbd188e8098d1e0e89c271" [label=""];
}

