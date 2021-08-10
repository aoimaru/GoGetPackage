[app/sources/218097035.Dockerfile]
digraph {
  "sha256:007c656b5fd3f287a6ef483bc21cfff2e2288801e06ac76251950a8d309d87e2" [label="docker-image://docker.io/accupara/ubuntu:16.04@sha256:024aa2545ec679e34069607f994ba53a22bcb0bbbdbfd85996861e96da265543" shape="ellipse"];
  "sha256:217b9fee58990ba124ddd8119fa262f0b6ba44c0319ecddcb9d6dd3769373d8c" [label="/bin/sh -c sudo apt-get update" shape="box"];
  "sha256:dd6190afa11c8a5d027e14dd66e74a412f63ff892fed45fbf5f7074206a770fd" [label="/bin/sh -c sudo apt-get install -y         autoconf         automake         bc         libelf-dev         libncurses5-dev         libssl-dev         openssl         perl         wget" shape="box"];
  "sha256:d8647ad142cebb3d25993a303b02f23c597bc69abcb361cce9bf51748de38bb5" [label="/bin/sh -c wget ftp://ftp.denx.de/pub/eldk/5.6/install.sh && chmod +x install.sh  && mkdir -p targets/powerpc-softfloat && cd targets/powerpc-softfloat && wget -nv ftp://ftp.denx.de/pub/eldk/5.6/targets/powerpc-softfloat/* && cd ../../  && sudo ./install.sh -s toolchain -r - powerpc-softfloat  && rm -rf targets" shape="box"];
  "sha256:ae052f965b6c7006b6a9a478e53bb7d9e3d67066089f6745d00747954404e88a" [label="sha256:ae052f965b6c7006b6a9a478e53bb7d9e3d67066089f6745d00747954404e88a" shape="plaintext"];
  "sha256:007c656b5fd3f287a6ef483bc21cfff2e2288801e06ac76251950a8d309d87e2" -> "sha256:217b9fee58990ba124ddd8119fa262f0b6ba44c0319ecddcb9d6dd3769373d8c" [label=""];
  "sha256:217b9fee58990ba124ddd8119fa262f0b6ba44c0319ecddcb9d6dd3769373d8c" -> "sha256:dd6190afa11c8a5d027e14dd66e74a412f63ff892fed45fbf5f7074206a770fd" [label=""];
  "sha256:dd6190afa11c8a5d027e14dd66e74a412f63ff892fed45fbf5f7074206a770fd" -> "sha256:d8647ad142cebb3d25993a303b02f23c597bc69abcb361cce9bf51748de38bb5" [label=""];
  "sha256:d8647ad142cebb3d25993a303b02f23c597bc69abcb361cce9bf51748de38bb5" -> "sha256:ae052f965b6c7006b6a9a478e53bb7d9e3d67066089f6745d00747954404e88a" [label=""];
}

