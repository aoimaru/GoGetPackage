[app/sources/218993614.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:1afc550269a7cb70c51e700a9a573aa3109cc516bc561ddcd723a0231ed955b8" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   gcc   ca-certificates   libc6-dev   libc6-armel-cross   libc6-dev-armel-cross   binutils-arm-linux-gnueabi   gcc-arm-linux-gnueabi   qemu-user   make   file" shape="box"];
  "sha256:11992a2ec2f13e5c6a8236e1fcacdb59004978fd63f0c6d55e7a464229aea4ad" [label="sha256:11992a2ec2f13e5c6a8236e1fcacdb59004978fd63f0c6d55e7a464229aea4ad" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:1afc550269a7cb70c51e700a9a573aa3109cc516bc561ddcd723a0231ed955b8" [label=""];
  "sha256:1afc550269a7cb70c51e700a9a573aa3109cc516bc561ddcd723a0231ed955b8" -> "sha256:11992a2ec2f13e5c6a8236e1fcacdb59004978fd63f0c6d55e7a464229aea4ad" [label=""];
}

