[app/sources/320733643.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:8f2dae527bd7d24df1e6092a6e6be47a80f58af68feb2cb15b2b58493bd2fbce" [label="/bin/sh -c apt-get -y update && apt-get -y install     clang     g++     libcap-ng-dev     libglib2.0-dev     libicecc-dev     liblzo2-dev     libncursesw5-dev     python3-pip     software-properties-common     unzip     wget" shape="box"];
  "sha256:ce6555fde6c4f84aa87829a3d5ed3386cbeb0ad89b8f87b4004fdd240bbe8baf" [label="/bin/sh -c add-apt-repository -y ppa:jonathonf/python-3.5" shape="box"];
  "sha256:34dacf4c9fc6fc075790361688cc361cb136fd7e04db1c3ebe313657cfbfa40c" [label="/bin/sh -c add-apt-repository -y ppa:ubuntu-toolchain-r/test" shape="box"];
  "sha256:25d6ddb3f0c46ad7bdeeb8c18154885d9c6520a232056f27e1c401b3b0618a68" [label="/bin/sh -c add-apt-repository -y ppa:jonathonf/binutils" shape="box"];
  "sha256:9e5dd529053d313c81fded77953e0f919a257f7dfa79bb260946c3f0258329a5" [label="/bin/sh -c apt-get -y update && apt-get -y install     g++-6     python3.5     clang-3.8" shape="box"];
  "sha256:d6bf9bd9bcad82573c9c525507ef9ff26e334cc676f478a443aa10a61e9b0e28" [label="/bin/sh -c apt-get -y update && apt-get -y --force-yes install binutils" shape="box"];
  "sha256:2bed8a42d2ed91fe83a83364360d6eb4d72f46780faaeeb123af802c3d2931d8" [label="/bin/sh -c update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 100" shape="box"];
  "sha256:3995671cae1f56c56a377dfc157b03681604a49ca3c85c358d122297fa44b2bd" [label="/bin/sh -c update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100" shape="box"];
  "sha256:58de2a1af4459f590ee3d834dafae210df66ece047448ba37fa33f4aece23ebd" [label="/bin/sh -c python3.5 -m pip install --user meson" shape="box"];
  "sha256:b0c842b5ec862b703135cf2268532c7f2dac9452a6e1260cc7b3a1b2dd9cb17c" [label="/bin/sh -c wget https://github.com/ninja-build/ninja/releases/download/v1.8.2/ninja-linux.zip -O ninja-linux.zip" shape="box"];
  "sha256:7b7d7fb88cd8471843eb1c34f8a62c5628c71c978d11465a967457f534bd65ca" [label="/bin/sh -c unzip ninja-linux.zip -d /usr/local/bin" shape="box"];
  "sha256:bbc9c156e61104cac62bf63eb5a99f081404df68c20d96f5bebaaad5b27099e5" [label="/bin/sh -c mkdir -p /root/icecream-sundae/builddir" shape="box"];
  "sha256:83f743b5de716bbfc0c36b1783db9917483d06b17785407e33312363437df03d" [label="local://context" shape="ellipse"];
  "sha256:23b2ed0fcec183c59883353a1a2a2504043031049b934b8a9bdf3b1e54f4f968" [label="copy{src=/, dest=/root/icecream-sundae/}" shape="note"];
  "sha256:ed8bfda76c5fb4865565dd963085194e605d8b05599804fa3df6afac5056f1a9" [label="mkdir{path=/root/icecream-sundae/builddir}" shape="note"];
  "sha256:b955f1cad15f1cef170bd18e8a93cd67c5ac51387277322c4e3f7d8ff5cebd48" [label="sha256:b955f1cad15f1cef170bd18e8a93cd67c5ac51387277322c4e3f7d8ff5cebd48" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:8f2dae527bd7d24df1e6092a6e6be47a80f58af68feb2cb15b2b58493bd2fbce" [label=""];
  "sha256:8f2dae527bd7d24df1e6092a6e6be47a80f58af68feb2cb15b2b58493bd2fbce" -> "sha256:ce6555fde6c4f84aa87829a3d5ed3386cbeb0ad89b8f87b4004fdd240bbe8baf" [label=""];
  "sha256:ce6555fde6c4f84aa87829a3d5ed3386cbeb0ad89b8f87b4004fdd240bbe8baf" -> "sha256:34dacf4c9fc6fc075790361688cc361cb136fd7e04db1c3ebe313657cfbfa40c" [label=""];
  "sha256:34dacf4c9fc6fc075790361688cc361cb136fd7e04db1c3ebe313657cfbfa40c" -> "sha256:25d6ddb3f0c46ad7bdeeb8c18154885d9c6520a232056f27e1c401b3b0618a68" [label=""];
  "sha256:25d6ddb3f0c46ad7bdeeb8c18154885d9c6520a232056f27e1c401b3b0618a68" -> "sha256:9e5dd529053d313c81fded77953e0f919a257f7dfa79bb260946c3f0258329a5" [label=""];
  "sha256:9e5dd529053d313c81fded77953e0f919a257f7dfa79bb260946c3f0258329a5" -> "sha256:d6bf9bd9bcad82573c9c525507ef9ff26e334cc676f478a443aa10a61e9b0e28" [label=""];
  "sha256:d6bf9bd9bcad82573c9c525507ef9ff26e334cc676f478a443aa10a61e9b0e28" -> "sha256:2bed8a42d2ed91fe83a83364360d6eb4d72f46780faaeeb123af802c3d2931d8" [label=""];
  "sha256:2bed8a42d2ed91fe83a83364360d6eb4d72f46780faaeeb123af802c3d2931d8" -> "sha256:3995671cae1f56c56a377dfc157b03681604a49ca3c85c358d122297fa44b2bd" [label=""];
  "sha256:3995671cae1f56c56a377dfc157b03681604a49ca3c85c358d122297fa44b2bd" -> "sha256:58de2a1af4459f590ee3d834dafae210df66ece047448ba37fa33f4aece23ebd" [label=""];
  "sha256:58de2a1af4459f590ee3d834dafae210df66ece047448ba37fa33f4aece23ebd" -> "sha256:b0c842b5ec862b703135cf2268532c7f2dac9452a6e1260cc7b3a1b2dd9cb17c" [label=""];
  "sha256:b0c842b5ec862b703135cf2268532c7f2dac9452a6e1260cc7b3a1b2dd9cb17c" -> "sha256:7b7d7fb88cd8471843eb1c34f8a62c5628c71c978d11465a967457f534bd65ca" [label=""];
  "sha256:7b7d7fb88cd8471843eb1c34f8a62c5628c71c978d11465a967457f534bd65ca" -> "sha256:bbc9c156e61104cac62bf63eb5a99f081404df68c20d96f5bebaaad5b27099e5" [label=""];
  "sha256:bbc9c156e61104cac62bf63eb5a99f081404df68c20d96f5bebaaad5b27099e5" -> "sha256:23b2ed0fcec183c59883353a1a2a2504043031049b934b8a9bdf3b1e54f4f968" [label=""];
  "sha256:83f743b5de716bbfc0c36b1783db9917483d06b17785407e33312363437df03d" -> "sha256:23b2ed0fcec183c59883353a1a2a2504043031049b934b8a9bdf3b1e54f4f968" [label=""];
  "sha256:23b2ed0fcec183c59883353a1a2a2504043031049b934b8a9bdf3b1e54f4f968" -> "sha256:ed8bfda76c5fb4865565dd963085194e605d8b05599804fa3df6afac5056f1a9" [label=""];
  "sha256:ed8bfda76c5fb4865565dd963085194e605d8b05599804fa3df6afac5056f1a9" -> "sha256:b955f1cad15f1cef170bd18e8a93cd67c5ac51387277322c4e3f7d8ff5cebd48" [label=""];
}

