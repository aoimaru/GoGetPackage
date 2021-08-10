[app/sources/223614956.Dockerfile]
digraph {
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:a7ba54d3b7442f9b50e7653206214b31b433519e6a65084dd25554bcca9dbae3" [label="/bin/sh -c apt-get update &&      apt-get install -y       autoconf               cmake                  libpng-dev             libtool                pkg-config             zlib1g-dev             make" shape="box"];
  "sha256:652245ddf14f6513d013221727cb23dcd37ef74c90b041a799c1d8d7ceadfcd7" [label="https://github.com/adobe-fonts/adobe-variable-font-prototype/releases/download/1.001/AdobeVFPrototype.otf" shape="ellipse"];
  "sha256:3950ebad1fb09380e0f0ca329bb709bd69ed461566c17c4e49df7fc6236abad2" [label="copy{src=/AdobeVFPrototype.otf, dest=/src/font-corpus/}" shape="note"];
  "sha256:9c4097cc05e59e28a552076208d3e101a323caf5093720119f1ee9d22ed87482" [label="/bin/sh -c git clone https://github.com/unicode-org/text-rendering-tests.git && cp text-rendering-tests/fonts/* $SRC/font-corpus" shape="box"];
  "sha256:ee299586c213d6a70197580cb7dc7493adf6aa168b65678e1f6025b40b236455" [label="/bin/sh -c git clone --depth 1 https://github.com/freetype/freetype2-testing.git" shape="box"];
  "sha256:e7dce3aee0b1fc4ff2be74d01a0a8979b194176293c33bd1179c6eca1612a560" [label="mkdir{path=/src/freetype2-testing}" shape="note"];
  "sha256:228dc0b8acbbaef343d0cb0780662206dce393ffede6351ce31fb449522da3ff" [label="local://context" shape="ellipse"];
  "sha256:5f53cd1c3258aaee3168ac3bbf9a97cf96eadb10621fb23e98955de3056a9d31" [label="copy{src=/build.sh, dest=/src/}" shape="note"];
  "sha256:52dc1203b2152b63d9615bfff2aae7699103185561621a6799cb080b6c925092" [label="sha256:52dc1203b2152b63d9615bfff2aae7699103185561621a6799cb080b6c925092" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:a7ba54d3b7442f9b50e7653206214b31b433519e6a65084dd25554bcca9dbae3" [label=""];
  "sha256:a7ba54d3b7442f9b50e7653206214b31b433519e6a65084dd25554bcca9dbae3" -> "sha256:3950ebad1fb09380e0f0ca329bb709bd69ed461566c17c4e49df7fc6236abad2" [label=""];
  "sha256:652245ddf14f6513d013221727cb23dcd37ef74c90b041a799c1d8d7ceadfcd7" -> "sha256:3950ebad1fb09380e0f0ca329bb709bd69ed461566c17c4e49df7fc6236abad2" [label=""];
  "sha256:3950ebad1fb09380e0f0ca329bb709bd69ed461566c17c4e49df7fc6236abad2" -> "sha256:9c4097cc05e59e28a552076208d3e101a323caf5093720119f1ee9d22ed87482" [label=""];
  "sha256:9c4097cc05e59e28a552076208d3e101a323caf5093720119f1ee9d22ed87482" -> "sha256:ee299586c213d6a70197580cb7dc7493adf6aa168b65678e1f6025b40b236455" [label=""];
  "sha256:ee299586c213d6a70197580cb7dc7493adf6aa168b65678e1f6025b40b236455" -> "sha256:e7dce3aee0b1fc4ff2be74d01a0a8979b194176293c33bd1179c6eca1612a560" [label=""];
  "sha256:e7dce3aee0b1fc4ff2be74d01a0a8979b194176293c33bd1179c6eca1612a560" -> "sha256:5f53cd1c3258aaee3168ac3bbf9a97cf96eadb10621fb23e98955de3056a9d31" [label=""];
  "sha256:228dc0b8acbbaef343d0cb0780662206dce393ffede6351ce31fb449522da3ff" -> "sha256:5f53cd1c3258aaee3168ac3bbf9a97cf96eadb10621fb23e98955de3056a9d31" [label=""];
  "sha256:5f53cd1c3258aaee3168ac3bbf9a97cf96eadb10621fb23e98955de3056a9d31" -> "sha256:52dc1203b2152b63d9615bfff2aae7699103185561621a6799cb080b6c925092" [label=""];
}

