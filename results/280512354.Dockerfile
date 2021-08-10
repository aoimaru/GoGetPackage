[app/sources/280512354.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:d59b0f137574975d8c0146018714bf2eab8dbebe5553a1c72ded66f2c458319b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:5313117f49ff8e8e4397d02b117ba4b33d1aaa44711c7fad557f683d7a70b3ae" [label="/bin/sh -c apt-get install apt-utils -y" shape="box"];
  "sha256:43c24ea59d227a64571c5e0c5a2d695bf9d816bdf12637f08059f4ab0643178e" [label="/bin/sh -c apt-get install -y --no-install-recommends     apt-transport-https     ca-certificates     curl     file     ftp     git     gnupg     iproute2     iputils-ping     locales     lsb-release     sudo     time     unzip     wget     zip && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8c1222756b10ca85e2eca5545017308e8eed18a810820b5dac37e2ee5b37eb10" [label="/bin/sh -c curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz     && tar --strip-components=1 -xvzf docker-18.03.1-ce.tgz -C /usr/local/bin" shape="box"];
  "sha256:10be8932823ae8eb113a38ca609d996cc86e29663b75b354491a97e0d40811f5" [label="/bin/sh -c rm docker-$DOCKER_VERSION.tgz" shape="box"];
  "sha256:0247885b4bcbe8f7d4a3ec11e7ff2aaf586ce6409f002e8467b3387d4069cffc" [label="/bin/sh -c curl -fsSLO https://storage.googleapis.com/kubernetes-release/release/v$KUBE_VERSION/bin/linux/amd64/kubectl     && mv kubectl /usr/local/bin && chmod 755 /usr/local/bin/kubectl" shape="box"];
  "sha256:5a4c8a32b0b7bbd17dc8e05429154b87c4d027d9284d78c460585314d73e83ad" [label="sha256:5a4c8a32b0b7bbd17dc8e05429154b87c4d027d9284d78c460585314d73e83ad" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:d59b0f137574975d8c0146018714bf2eab8dbebe5553a1c72ded66f2c458319b" [label=""];
  "sha256:d59b0f137574975d8c0146018714bf2eab8dbebe5553a1c72ded66f2c458319b" -> "sha256:5313117f49ff8e8e4397d02b117ba4b33d1aaa44711c7fad557f683d7a70b3ae" [label=""];
  "sha256:5313117f49ff8e8e4397d02b117ba4b33d1aaa44711c7fad557f683d7a70b3ae" -> "sha256:43c24ea59d227a64571c5e0c5a2d695bf9d816bdf12637f08059f4ab0643178e" [label=""];
  "sha256:43c24ea59d227a64571c5e0c5a2d695bf9d816bdf12637f08059f4ab0643178e" -> "sha256:8c1222756b10ca85e2eca5545017308e8eed18a810820b5dac37e2ee5b37eb10" [label=""];
  "sha256:8c1222756b10ca85e2eca5545017308e8eed18a810820b5dac37e2ee5b37eb10" -> "sha256:10be8932823ae8eb113a38ca609d996cc86e29663b75b354491a97e0d40811f5" [label=""];
  "sha256:10be8932823ae8eb113a38ca609d996cc86e29663b75b354491a97e0d40811f5" -> "sha256:0247885b4bcbe8f7d4a3ec11e7ff2aaf586ce6409f002e8467b3387d4069cffc" [label=""];
  "sha256:0247885b4bcbe8f7d4a3ec11e7ff2aaf586ce6409f002e8467b3387d4069cffc" -> "sha256:5a4c8a32b0b7bbd17dc8e05429154b87c4d027d9284d78c460585314d73e83ad" [label=""];
}

