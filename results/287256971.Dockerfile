[app/sources/287256971.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:a15aaafd46ec37f8d267f7b2381e223f03d6ee6d1d559d2230569d3bb46de7ab" [label="/bin/sh -c apt update && apt install -y software-properties-common &&     add-apt-repository ppa:ubuntu-toolchain-r/test -y &&     apt update &&     apt install -y         automake         build-essential         ccache         clang-3.8         cmake3         curl         gcc-4.9         g++-4.9         git         libcurl4-openssl-dev         libssl-dev         libtool         lsb-release         make         tar         unzip         wget         zlib1g-dev         &&     update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100 &&     update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.8 100 &&     update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 100 &&     update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 100" shape="box"];
  "sha256:1aabdfff5e9188a2762ebc523e2e20f14ef31e58f502d0baf6c0c01ae7f835d6" [label="/bin/sh -c apt update && apt install -y python-dev python-pip" shape="box"];
  "sha256:d31729dd3516f07375fa17d0041b3c93b3c57fdb830ec9fddf5c9757b173226e" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:bd4f55e7bdfebe4c40cb414891f232fd89b93b13f7594b64c4faca423c58b7b5" [label="/bin/sh -c pip install flask httpbin gevent gunicorn crc32c" shape="box"];
  "sha256:dadc2ad4e2f246a3f336df9329b0a1ff50643a45a5ce9eb1212f5d2241373dbe" [label="local://context" shape="ellipse"];
  "sha256:6148c928abea975024ad7aab831e4a74507b200acacaa0fabe89d9d9c26479d9" [label="copy{src=/, dest=/var/tmp/ci}" shape="note"];
  "sha256:89c4a75c641702050515c8dcc7f8c617428c5c645dd1f245b3cb8cabf4381b01" [label="mkdir{path=/var/tmp/downloads}" shape="note"];
  "sha256:79b7843e55777c9bee1c9bd96ba20141d53a3c129c3ce8bbc90b185d3dfb078d" [label="/bin/sh -c /var/tmp/ci/install-cloud-sdk.sh" shape="box"];
  "sha256:a77f4bcd9907832b6b8af5988c499f03f953f55fc7116848aca9d2d787cab2a3" [label="/bin/sh -c /var/tmp/ci/install-bazel.sh" shape="box"];
  "sha256:1fc9c6c52a7ebce47b7036460db2e0b4db188333980fb0ab853f65a4e87266ad" [label="sha256:1fc9c6c52a7ebce47b7036460db2e0b4db188333980fb0ab853f65a4e87266ad" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:a15aaafd46ec37f8d267f7b2381e223f03d6ee6d1d559d2230569d3bb46de7ab" [label=""];
  "sha256:a15aaafd46ec37f8d267f7b2381e223f03d6ee6d1d559d2230569d3bb46de7ab" -> "sha256:1aabdfff5e9188a2762ebc523e2e20f14ef31e58f502d0baf6c0c01ae7f835d6" [label=""];
  "sha256:1aabdfff5e9188a2762ebc523e2e20f14ef31e58f502d0baf6c0c01ae7f835d6" -> "sha256:d31729dd3516f07375fa17d0041b3c93b3c57fdb830ec9fddf5c9757b173226e" [label=""];
  "sha256:d31729dd3516f07375fa17d0041b3c93b3c57fdb830ec9fddf5c9757b173226e" -> "sha256:bd4f55e7bdfebe4c40cb414891f232fd89b93b13f7594b64c4faca423c58b7b5" [label=""];
  "sha256:bd4f55e7bdfebe4c40cb414891f232fd89b93b13f7594b64c4faca423c58b7b5" -> "sha256:6148c928abea975024ad7aab831e4a74507b200acacaa0fabe89d9d9c26479d9" [label=""];
  "sha256:dadc2ad4e2f246a3f336df9329b0a1ff50643a45a5ce9eb1212f5d2241373dbe" -> "sha256:6148c928abea975024ad7aab831e4a74507b200acacaa0fabe89d9d9c26479d9" [label=""];
  "sha256:6148c928abea975024ad7aab831e4a74507b200acacaa0fabe89d9d9c26479d9" -> "sha256:89c4a75c641702050515c8dcc7f8c617428c5c645dd1f245b3cb8cabf4381b01" [label=""];
  "sha256:89c4a75c641702050515c8dcc7f8c617428c5c645dd1f245b3cb8cabf4381b01" -> "sha256:79b7843e55777c9bee1c9bd96ba20141d53a3c129c3ce8bbc90b185d3dfb078d" [label=""];
  "sha256:79b7843e55777c9bee1c9bd96ba20141d53a3c129c3ce8bbc90b185d3dfb078d" -> "sha256:a77f4bcd9907832b6b8af5988c499f03f953f55fc7116848aca9d2d787cab2a3" [label=""];
  "sha256:a77f4bcd9907832b6b8af5988c499f03f953f55fc7116848aca9d2d787cab2a3" -> "sha256:1fc9c6c52a7ebce47b7036460db2e0b4db188333980fb0ab853f65a4e87266ad" [label=""];
}

