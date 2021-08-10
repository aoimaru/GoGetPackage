[app/sources/229952989.Dockerfile]
digraph {
  "sha256:4ae7efcb8400a1f55e36ba3446a6a6457d67ac5989b383274b35f12dd6aefe77" [label="docker-image://docker.io/kreable/php70:latest" shape="ellipse"];
  "sha256:5cff16bc3e2611dac111b2bfba25260be8385a4ff6412a909b4acfc801839b3d" [label="/bin/sh -c cat /etc/*-release" shape="box"];
  "sha256:c111ae7a8ec0e7176e028f52112b50de326b1b16a55eea0170e5028ff9e251dd" [label="/bin/sh -c add-apt-repository -y ppa:webupd8team/java" shape="box"];
  "sha256:0d6044f7b8ad4039dc62a8eda56caa8ffc23620fa5b01bc4f0d018ce9f4efcd0" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9770adf37fcee9516d59d8bd836864a456175c4a5e6c36c0d0617e521433cdc5" [label="/bin/sh -c echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections &&   add-apt-repository -y ppa:webupd8team/java &&   apt-get update &&   apt-get install -y oracle-java8-installer &&   rm -rf /var/cache/oracle-jdk8-installer" shape="box"];
  "sha256:0a144312eb8361325141df53612cde629cb037c150d4633b34f3b367e06e2297" [label="/bin/sh -c apt-get install -y oracle-java8-set-default" shape="box"];
  "sha256:6ab55d4ddd0b51a2daa78f9f0a7c2e8f8cd02f7f50375d13cba5574d3a0dd7ad" [label="/bin/sh -c apt-get install -y firefox xvfb" shape="box"];
  "sha256:3214b70478fafd4df99642225c28b1118bcb7d1494e1e312b2ee4d23cc5b3340" [label="/bin/sh -c wget -O /root/selenium.jar http://selenium-release.storage.googleapis.com/3.4/selenium-server-standalone-3.4.0.jar" shape="box"];
  "sha256:b086a61f02d6af795eb02717242245814e72daa8da894735f69038e8b36961e7" [label="sha256:b086a61f02d6af795eb02717242245814e72daa8da894735f69038e8b36961e7" shape="plaintext"];
  "sha256:4ae7efcb8400a1f55e36ba3446a6a6457d67ac5989b383274b35f12dd6aefe77" -> "sha256:5cff16bc3e2611dac111b2bfba25260be8385a4ff6412a909b4acfc801839b3d" [label=""];
  "sha256:5cff16bc3e2611dac111b2bfba25260be8385a4ff6412a909b4acfc801839b3d" -> "sha256:c111ae7a8ec0e7176e028f52112b50de326b1b16a55eea0170e5028ff9e251dd" [label=""];
  "sha256:c111ae7a8ec0e7176e028f52112b50de326b1b16a55eea0170e5028ff9e251dd" -> "sha256:0d6044f7b8ad4039dc62a8eda56caa8ffc23620fa5b01bc4f0d018ce9f4efcd0" [label=""];
  "sha256:0d6044f7b8ad4039dc62a8eda56caa8ffc23620fa5b01bc4f0d018ce9f4efcd0" -> "sha256:9770adf37fcee9516d59d8bd836864a456175c4a5e6c36c0d0617e521433cdc5" [label=""];
  "sha256:9770adf37fcee9516d59d8bd836864a456175c4a5e6c36c0d0617e521433cdc5" -> "sha256:0a144312eb8361325141df53612cde629cb037c150d4633b34f3b367e06e2297" [label=""];
  "sha256:0a144312eb8361325141df53612cde629cb037c150d4633b34f3b367e06e2297" -> "sha256:6ab55d4ddd0b51a2daa78f9f0a7c2e8f8cd02f7f50375d13cba5574d3a0dd7ad" [label=""];
  "sha256:6ab55d4ddd0b51a2daa78f9f0a7c2e8f8cd02f7f50375d13cba5574d3a0dd7ad" -> "sha256:3214b70478fafd4df99642225c28b1118bcb7d1494e1e312b2ee4d23cc5b3340" [label=""];
  "sha256:3214b70478fafd4df99642225c28b1118bcb7d1494e1e312b2ee4d23cc5b3340" -> "sha256:b086a61f02d6af795eb02717242245814e72daa8da894735f69038e8b36961e7" [label=""];
}

