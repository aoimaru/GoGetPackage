[app/sources/223615571.Dockerfile]
digraph {
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:38066fac495f8a0f795fa537680034cdce7cbfbb5981f5327f9a3672822024e4" [label="/bin/sh -c apt-get update && apt-get install -y make autoconf automake libtool" shape="box"];
  "sha256:d62c3529f543b75be6b5aeeb154d3a6b607313e1ecac35668d07cf4608beb1fd" [label="/bin/sh -c git clone --depth 1 --recursive https://github.com/google/woff2" shape="box"];
  "sha256:ab5896162158c6b40626a137a4421650714053084039ee5bda19a1e32d614200" [label="mkdir{path=/src/woff2}" shape="note"];
  "sha256:27ac70b0c8d8be9f877cbb7a03fc7f8288bfb33d57fc42bcd6253fa44d42ee5a" [label="local://context" shape="ellipse"];
  "sha256:fc46d9550143465e2adafae51597578f9507bf84d7122c8a79795e414d9dda93" [label="copy{src=/build.sh, dest=/src/},copy{src=/*.options, dest=/src/}" shape="note"];
  "sha256:57edd159dcca47dd749be39415537ac6f60111670c539b84f5bed0ad09e2162c" [label="copy{src=/corpus, dest=/src/corpus}" shape="note"];
  "sha256:eb48835528ea22825654c8d5ef89f3dfb8b3da3320276106d925188bc9709cdc" [label="sha256:eb48835528ea22825654c8d5ef89f3dfb8b3da3320276106d925188bc9709cdc" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:38066fac495f8a0f795fa537680034cdce7cbfbb5981f5327f9a3672822024e4" [label=""];
  "sha256:38066fac495f8a0f795fa537680034cdce7cbfbb5981f5327f9a3672822024e4" -> "sha256:d62c3529f543b75be6b5aeeb154d3a6b607313e1ecac35668d07cf4608beb1fd" [label=""];
  "sha256:d62c3529f543b75be6b5aeeb154d3a6b607313e1ecac35668d07cf4608beb1fd" -> "sha256:ab5896162158c6b40626a137a4421650714053084039ee5bda19a1e32d614200" [label=""];
  "sha256:ab5896162158c6b40626a137a4421650714053084039ee5bda19a1e32d614200" -> "sha256:fc46d9550143465e2adafae51597578f9507bf84d7122c8a79795e414d9dda93" [label=""];
  "sha256:27ac70b0c8d8be9f877cbb7a03fc7f8288bfb33d57fc42bcd6253fa44d42ee5a" -> "sha256:fc46d9550143465e2adafae51597578f9507bf84d7122c8a79795e414d9dda93" [label=""];
  "sha256:fc46d9550143465e2adafae51597578f9507bf84d7122c8a79795e414d9dda93" -> "sha256:57edd159dcca47dd749be39415537ac6f60111670c539b84f5bed0ad09e2162c" [label=""];
  "sha256:27ac70b0c8d8be9f877cbb7a03fc7f8288bfb33d57fc42bcd6253fa44d42ee5a" -> "sha256:57edd159dcca47dd749be39415537ac6f60111670c539b84f5bed0ad09e2162c" [label=""];
  "sha256:57edd159dcca47dd749be39415537ac6f60111670c539b84f5bed0ad09e2162c" -> "sha256:eb48835528ea22825654c8d5ef89f3dfb8b3da3320276106d925188bc9709cdc" [label=""];
}

