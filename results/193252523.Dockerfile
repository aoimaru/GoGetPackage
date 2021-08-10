[app/sources/193252523.Dockerfile]
digraph {
  "sha256:8d7ea498dc1e229cbae65132a3394b017c180169329d7a5d3ee10acba727f1fc" [label="docker-image://docker.io/library/debian:8.8" shape="ellipse"];
  "sha256:d6de61a308e61905dd68b9c754beecb7ecb89d288d27b72f43f4d97e9d730c0c" [label="/bin/sh -c \"echo\" \"deb http://http.us.debian.org/debian wheezy non-free\" >> /etc/apt/sources.list" shape="box"];
  "sha256:9d7f9c1b1fbe30bbbd7b29d447c314e618b902984811c28c4d3db3f032c8aee6" [label="/bin/sh -c apt-get update && apt-get install -y \tautoconf \tautomake \tbison \tbzip2 \tflex \tg++ \tgawk \tgcc \tgit \tgperf \tlibexpat-dev \tlibtool \tlibtool-bin \tmake \tncurses-dev \tnano \tpython \tpython-dev \tpython-serial \tsed \ttexinfo \tunrar \tunzip \twget \thelp2man" shape="box"];
  "sha256:d2c4ddd1459d616890946c7fd84cf92997008795a9348f165488a17f5e34d29a" [label="/bin/sh -c useradd -ms /bin/bash espbuilder && usermod -a -G dialout espbuilder" shape="box"];
  "sha256:f8becea6f4af6be72f7eaee260e0669cb2be23feab4e3ec7407baa106cddb7ef" [label="/bin/sh -c cd /home/espbuilder && git clone --recursive https://github.com/pfalcon/esp-open-sdk.git" shape="box"];
  "sha256:dfe4221ee86030d1f6fbf036f3ca47e9d789180d9bcec3bbaafa9ffd192c03a2" [label="/bin/sh -c cd /home/espbuilder/esp-open-sdk && make STANDALONE=n" shape="box"];
  "sha256:4114cb8ab9e68567523b0834089ad34b8dd8e17877a61ec33a5d1ce2f9600f13" [label="/bin/sh -c (cd /home/espbuilder/ && git clone https://github.com/esp8266/source-code-examples.git)" shape="box"];
  "sha256:8423ada187d17ccaff1e81eb592b4e2b6df87f424968a958858a5a572c7d0caa" [label="/bin/sh -c (cd /home/espbuilder/ && git clone https://github.com/tommie/esptool-ck.git && cd esptool-ck && make )" shape="box"];
  "sha256:c1aa56024aae9eae6c0705bee05f0333f8c33818e2a9d2e7bd8f8eb854de5a70" [label="sha256:c1aa56024aae9eae6c0705bee05f0333f8c33818e2a9d2e7bd8f8eb854de5a70" shape="plaintext"];
  "sha256:8d7ea498dc1e229cbae65132a3394b017c180169329d7a5d3ee10acba727f1fc" -> "sha256:d6de61a308e61905dd68b9c754beecb7ecb89d288d27b72f43f4d97e9d730c0c" [label=""];
  "sha256:d6de61a308e61905dd68b9c754beecb7ecb89d288d27b72f43f4d97e9d730c0c" -> "sha256:9d7f9c1b1fbe30bbbd7b29d447c314e618b902984811c28c4d3db3f032c8aee6" [label=""];
  "sha256:9d7f9c1b1fbe30bbbd7b29d447c314e618b902984811c28c4d3db3f032c8aee6" -> "sha256:d2c4ddd1459d616890946c7fd84cf92997008795a9348f165488a17f5e34d29a" [label=""];
  "sha256:d2c4ddd1459d616890946c7fd84cf92997008795a9348f165488a17f5e34d29a" -> "sha256:f8becea6f4af6be72f7eaee260e0669cb2be23feab4e3ec7407baa106cddb7ef" [label=""];
  "sha256:f8becea6f4af6be72f7eaee260e0669cb2be23feab4e3ec7407baa106cddb7ef" -> "sha256:dfe4221ee86030d1f6fbf036f3ca47e9d789180d9bcec3bbaafa9ffd192c03a2" [label=""];
  "sha256:dfe4221ee86030d1f6fbf036f3ca47e9d789180d9bcec3bbaafa9ffd192c03a2" -> "sha256:4114cb8ab9e68567523b0834089ad34b8dd8e17877a61ec33a5d1ce2f9600f13" [label=""];
  "sha256:4114cb8ab9e68567523b0834089ad34b8dd8e17877a61ec33a5d1ce2f9600f13" -> "sha256:8423ada187d17ccaff1e81eb592b4e2b6df87f424968a958858a5a572c7d0caa" [label=""];
  "sha256:8423ada187d17ccaff1e81eb592b4e2b6df87f424968a958858a5a572c7d0caa" -> "sha256:c1aa56024aae9eae6c0705bee05f0333f8c33818e2a9d2e7bd8f8eb854de5a70" [label=""];
}

