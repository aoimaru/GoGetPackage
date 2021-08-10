[app/sources/231211051.Dockerfile]
digraph {
  "sha256:1319bc7a7522b295044a7c6fe57a2696ef7e40c9011ba920baa9ba70837eac9f" [label="docker-image://docker.io/library/ubuntu:xenial-20171006" shape="ellipse"];
  "sha256:7fb39347d7196e1ca7beae2ba5a289712849937a9754bfd254f28a5d38a5180d" [label="/bin/sh -c apt-get update --fix-missing && apt-get install -y locales" shape="box"];
  "sha256:067db3cc0ab5d94adfad97c949c562b5038871f62ad7dbba392dc2f0205f3ae6" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:13a071834d20c300cd9a54f21d287b1db3f2ae32884ae944ed2b5a6f131e2b64" [label="/bin/sh -c apt-get install -y     curl     man     netcat-openbsd     curl     wget     less     dnsutils     net-tools     vim     sysstat     htop     numactl     python-dev     python-pip     python3-dev     python3-pip &&     pip3 install virtualenv virtualenvwrapper &&     pip3 install --upgrade pip &&     pip2 install virtualenv virtualenvwrapper &&     pip2 install --upgrade pip &&     cd /tmp &&     curl https://raw.githubusercontent.com/WallarooLabs/wallaroo/${WALLAROO_VERSION}/misc/wallaroo-up.sh -o wallaroo-up.sh -J -L &&     chmod +x wallaroo-up.sh &&     export WALLAROO_UP_SOURCE=docker &&     export CUSTOM_WALLAROO_BUILD_ARGS=\"target_cpu=x86-64\" &&     echo y | ./wallaroo-up.sh -t all &&     ln -s ~/wallaroo-tutorial/wallaroo-${WALLAROO_VERSION} /wallaroo-src &&     cd /wallaroo-src &&     sed -i \"s@^export RELEASE_MUTABLE_DIR=.*@export RELEASE_MUTABLE_DIR=\\\"/tmp/metrics_ui\\\"@\" bin/activate &&     mkdir /wallaroo-bin &&     cp docker/env-setup /wallaroo-bin &&     make clean &&     mkdir /src &&     rm -rf /var/lib/apt/lists/* &&     apt-get -y autoremove --purge &&     apt-get -y clean" shape="box"];
  "sha256:24f3714755e40d87cb514d2586691177a27e05082088f2b1f3e1d6dbcd8200f2" [label="mkdir{path=/src}" shape="note"];
  "sha256:d2f7279fab36f22f4e01711dbe6f2ecc46a160304907222a405536ad669d8012" [label="sha256:d2f7279fab36f22f4e01711dbe6f2ecc46a160304907222a405536ad669d8012" shape="plaintext"];
  "sha256:1319bc7a7522b295044a7c6fe57a2696ef7e40c9011ba920baa9ba70837eac9f" -> "sha256:7fb39347d7196e1ca7beae2ba5a289712849937a9754bfd254f28a5d38a5180d" [label=""];
  "sha256:7fb39347d7196e1ca7beae2ba5a289712849937a9754bfd254f28a5d38a5180d" -> "sha256:067db3cc0ab5d94adfad97c949c562b5038871f62ad7dbba392dc2f0205f3ae6" [label=""];
  "sha256:067db3cc0ab5d94adfad97c949c562b5038871f62ad7dbba392dc2f0205f3ae6" -> "sha256:13a071834d20c300cd9a54f21d287b1db3f2ae32884ae944ed2b5a6f131e2b64" [label=""];
  "sha256:13a071834d20c300cd9a54f21d287b1db3f2ae32884ae944ed2b5a6f131e2b64" -> "sha256:24f3714755e40d87cb514d2586691177a27e05082088f2b1f3e1d6dbcd8200f2" [label=""];
  "sha256:24f3714755e40d87cb514d2586691177a27e05082088f2b1f3e1d6dbcd8200f2" -> "sha256:d2f7279fab36f22f4e01711dbe6f2ecc46a160304907222a405536ad669d8012" [label=""];
}

