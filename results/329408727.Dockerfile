[app/sources/329408727.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:131619cc80b2bbe2a6a71b903a6f2a8188387b0c4cb7e26594a5447a19df3e8e" [label="mkdir{path=/root}" shape="note"];
  "sha256:0728dfe3a35c725258df36ab1262d17af48fbf01d8f1aeced7fcd2161669acd9" [label="/bin/sh -c apt-get update && apt-get -qy install  automake  build-essential  libcurl4-openssl-dev  libssl-dev  git  ca-certificates  libjansson-dev libgmp-dev g++ --no-install-recommends" shape="box"];
  "sha256:c107d22664380a08b8eec741b6a6066e3ec944ead00b7cf1b2e993311341ef17" [label="/bin/sh -c git clone --recursive https://github.com/JayDDee/cpuminer-opt cpuminer-multi" shape="box"];
  "sha256:1c04387fabf1f63bd83db218f53295408c06e73a2c9eb6ad6a1bccc1523fabf3" [label="mkdir{path=/root/cpuminer-multi}" shape="note"];
  "sha256:947baa10f4e46150779a7fdddec61b3c44c6e6a70696cf74fd21f1e038df2304" [label="/bin/sh -c ./autogen.sh" shape="box"];
  "sha256:1cd1ceafa45502706b7b9b7d347c2d7a264f2895ea868256ad60c3040180e946" [label="/bin/sh -c CFLAGS=\"-O3 -march=native -Wall\" CXXFLAGS=\"$CFLAGS -std=gnu++11\" ./configure --with-curl" shape="box"];
  "sha256:934be185b3f98bba1c70d491aadb4e802f98111ae508fd99e2b0451967cd41d7" [label="/bin/sh -c make" shape="box"];
  "sha256:77b8ba6c82885284a7cff3b4fc3ac12aa9465d0b9218ef6d4046a07bd994a927" [label="sha256:77b8ba6c82885284a7cff3b4fc3ac12aa9465d0b9218ef6d4046a07bd994a927" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:131619cc80b2bbe2a6a71b903a6f2a8188387b0c4cb7e26594a5447a19df3e8e" [label=""];
  "sha256:131619cc80b2bbe2a6a71b903a6f2a8188387b0c4cb7e26594a5447a19df3e8e" -> "sha256:0728dfe3a35c725258df36ab1262d17af48fbf01d8f1aeced7fcd2161669acd9" [label=""];
  "sha256:0728dfe3a35c725258df36ab1262d17af48fbf01d8f1aeced7fcd2161669acd9" -> "sha256:c107d22664380a08b8eec741b6a6066e3ec944ead00b7cf1b2e993311341ef17" [label=""];
  "sha256:c107d22664380a08b8eec741b6a6066e3ec944ead00b7cf1b2e993311341ef17" -> "sha256:1c04387fabf1f63bd83db218f53295408c06e73a2c9eb6ad6a1bccc1523fabf3" [label=""];
  "sha256:1c04387fabf1f63bd83db218f53295408c06e73a2c9eb6ad6a1bccc1523fabf3" -> "sha256:947baa10f4e46150779a7fdddec61b3c44c6e6a70696cf74fd21f1e038df2304" [label=""];
  "sha256:947baa10f4e46150779a7fdddec61b3c44c6e6a70696cf74fd21f1e038df2304" -> "sha256:1cd1ceafa45502706b7b9b7d347c2d7a264f2895ea868256ad60c3040180e946" [label=""];
  "sha256:1cd1ceafa45502706b7b9b7d347c2d7a264f2895ea868256ad60c3040180e946" -> "sha256:934be185b3f98bba1c70d491aadb4e802f98111ae508fd99e2b0451967cd41d7" [label=""];
  "sha256:934be185b3f98bba1c70d491aadb4e802f98111ae508fd99e2b0451967cd41d7" -> "sha256:77b8ba6c82885284a7cff3b4fc3ac12aa9465d0b9218ef6d4046a07bd994a927" [label=""];
}

