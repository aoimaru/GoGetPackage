[app/sources/345024079.Dockerfile]
digraph {
  "sha256:c5183aa4873b88078bc664ba6c8ca1e6ba7e43b63a8ff7174bed0ee8d08f134d" [label="docker-image://docker.io/library/ubuntu:18.04@sha256:7bd7a9ca99f868bf69c4b6212f64f2af8e243f97ba13abb3e641e03a7ceb59e8" shape="ellipse"];
  "sha256:de9983572e74cd495bc5f31cfc2178f676fb7052d7a94976db2c4e874785c11a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   gcc   ca-certificates   libc6-dev   gcc-arm-linux-gnueabihf   libc6-dev-armhf-cross   qemu-user" shape="box"];
  "sha256:86e0c07dae7d3cd595fa7a92fa5e742e69bedfe2b28b246033d29acf5d69cc10" [label="sha256:86e0c07dae7d3cd595fa7a92fa5e742e69bedfe2b28b246033d29acf5d69cc10" shape="plaintext"];
  "sha256:c5183aa4873b88078bc664ba6c8ca1e6ba7e43b63a8ff7174bed0ee8d08f134d" -> "sha256:de9983572e74cd495bc5f31cfc2178f676fb7052d7a94976db2c4e874785c11a" [label=""];
  "sha256:de9983572e74cd495bc5f31cfc2178f676fb7052d7a94976db2c4e874785c11a" -> "sha256:86e0c07dae7d3cd595fa7a92fa5e742e69bedfe2b28b246033d29acf5d69cc10" [label=""];
}

