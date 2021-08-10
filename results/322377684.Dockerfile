[app/sources/322377684.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:c340faf4c3d26a137bea2bfd75174cf2cc8a1b0f8aab09e27a1aab350571b4ee" [label="/bin/sh -c apt-get -qq update &&     apt-get -y upgrade &&     apt-get -y --no-install-recommends install software-properties-common mg build-essential protobuf-compiler &&     apt-get -y --no-install-recommends install python libprotobuf-dev libcurl4-openssl-dev &&     apt-get -y --no-install-recommends install libboost-all-dev libncurses5-dev libjemalloc-dev &&     apt-get -y --no-install-recommends install wget curl m4 git debhelper fakeroot libssl-dev tzdata &&     add-apt-repository -y ppa:ubuntu-toolchain-r/test &&     apt-get update &&     apt-get install -y --no-install-recommends gcc-5 g++-5 &&     update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 60 --slave /usr/bin/g++ g++ /usr/bin/g++-5 &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:10915708a0bff8ded6fb9f0847762ef6393b0d268723d84ebdff5c88e5066356" [label="local://context" shape="ellipse"];
  "sha256:97a88c7b266f1986ea56eb2d34237c21670f2c10b3fa0ccd19322a1d8bd9f397" [label="copy{src=/, dest=/rebirthdb}" shape="note"];
  "sha256:9c2b535f0a5d29008e455e70eeddad2fc95ee13f560cc1f466bab36346e9ee36" [label="mkdir{path=/rebirthdb}" shape="note"];
  "sha256:e1565496d93d211fe2f8665ce6f1dd5930049a68a23268d656092967f316e5d5" [label="sha256:e1565496d93d211fe2f8665ce6f1dd5930049a68a23268d656092967f316e5d5" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:c340faf4c3d26a137bea2bfd75174cf2cc8a1b0f8aab09e27a1aab350571b4ee" [label=""];
  "sha256:c340faf4c3d26a137bea2bfd75174cf2cc8a1b0f8aab09e27a1aab350571b4ee" -> "sha256:97a88c7b266f1986ea56eb2d34237c21670f2c10b3fa0ccd19322a1d8bd9f397" [label=""];
  "sha256:10915708a0bff8ded6fb9f0847762ef6393b0d268723d84ebdff5c88e5066356" -> "sha256:97a88c7b266f1986ea56eb2d34237c21670f2c10b3fa0ccd19322a1d8bd9f397" [label=""];
  "sha256:97a88c7b266f1986ea56eb2d34237c21670f2c10b3fa0ccd19322a1d8bd9f397" -> "sha256:9c2b535f0a5d29008e455e70eeddad2fc95ee13f560cc1f466bab36346e9ee36" [label=""];
  "sha256:9c2b535f0a5d29008e455e70eeddad2fc95ee13f560cc1f466bab36346e9ee36" -> "sha256:e1565496d93d211fe2f8665ce6f1dd5930049a68a23268d656092967f316e5d5" [label=""];
}

